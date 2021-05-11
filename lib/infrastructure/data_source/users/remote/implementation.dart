import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_app_template/infrastructure/models/user/model.dart';

import 'interface.dart';

class UsersRDSImp extends UsersRDS {
  const UsersRDSImp({
    required this.dio,
  });

  final Dio dio;

  @override
  Future<Set<UserR>> getUsersByUsername(
    String username,
  ) async {
    // API endpoint doc:
    // https://docs.github.com/en/rest/reference/search#search-users

    late final Response response;

    try {
      response = await dio.get(
        '/search/users',
        queryParameters: {
          'q': username,
        },
      );
    } on DioError catch (e) {
      switch (e.type) {
        case DioErrorType.other:
          if (e.error != null && e.error is SocketException) {
            throw const GetUsersException.offline();
          }
          break;
        default:
          rethrow;
      }
    }

    final jsonResponseData = response.data as Map<String, dynamic>;

    final jsonUsers = jsonResponseData['items'] as List;

    final users = jsonUsers.map(
      (jsonUser) => UserR.fromJson(
        jsonUser as Map<String, dynamic>,
      ),
    );

    return users.toSet();
  }
}
