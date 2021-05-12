import 'dart:io';

import 'package:dio/dio.dart';

import '../../../../domain/use_cases/get_repositories/use_case.dart';
import '../../../models/repository/model.dart';
import 'interface.dart';

class RepositoriesRDSImp extends RepositoriesRDS {
  const RepositoriesRDSImp({
    required this.dio,
  });

  final Dio dio;

  @override
  Future<Set<RepositoryR>> getRepositoriesByNameAndOwner(
    RepositoryNameAndOwner repositoryNameAndOwner,
  ) async {
    // API endpoint doc:
    // https://docs.github.com/en/rest/reference/search#search-repositories

    late final Response response;

    final queryStrBuffer = StringBuffer()
      ..write(repositoryNameAndOwner.repositoryName)
      ..write('+user:')
      ..write(repositoryNameAndOwner.repositoryOwner.username);

    try {
      response = await dio.get(
        '/search/repositories',
        queryParameters: {
          'q': queryStrBuffer.toString(),
        },
      );
    } on DioError catch (e) {
      switch (e.type) {
        case DioErrorType.other:
          if (e.error != null && e.error is SocketException) {
            throw const GetRepositoriesException.offline();
          }
          break;
        default:
          rethrow;
      }
    }

    final jsonResponseData = response.data as Map<String, dynamic>;

    final jsonRepositories = jsonResponseData['items'] as List;

    final repositories = jsonRepositories.map(
      (jsonRepository) => RepositoryR.fromJson(
        jsonRepository as Map<String, dynamic>,
      ),
    );

    return repositories.toSet();
  }
}
