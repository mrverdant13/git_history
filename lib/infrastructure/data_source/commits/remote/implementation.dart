import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_app_template/domain/entities/commit/entity.dart';
import 'package:kt_dart/collection.dart';

import '../../../../domain/use_cases/get_commits/use_case.dart';
import '../../../models/commit/model.dart';
import 'interface.dart';

class CommitsRDSImp extends CommitsRDS {
  const CommitsRDSImp({
    required this.dio,
  });

  final Dio dio;

  @override
  Future<CommitsPageData> getCommitsPageDataByRepoAndOwner(
    RepoAndOwnerAndCommitPageNumber repoAndOwnerAndCommitPageNumber,
  ) async {
    // API endpoint doc:
    // https://docs.github.com/en/rest/reference/repos#commits

    late final Response response;

    final endpointStrBuffer = StringBuffer()
      ..write('/repos/')
      ..write(repoAndOwnerAndCommitPageNumber.owner.username)
      ..write('/')
      ..write(repoAndOwnerAndCommitPageNumber.repository.name)
      ..write('/commits');

    try {
      response = await dio.get(
        endpointStrBuffer.toString(),
        queryParameters: {
          'page': '${repoAndOwnerAndCommitPageNumber.page}',
        },
      );
    } on DioError catch (e) {
      switch (e.type) {
        case DioErrorType.other:
          if (e.error != null && e.error is SocketException) {
            throw const GetCommitsException.offline();
          }
          break;
        default:
          rethrow;
      }
    }

    final jsonCommits = response.data as List;

    final commits = jsonCommits
        .map(
          (jsonCommit) => CommitR.fromJson(
            jsonCommit as Map<String, dynamic>,
          ),
        )
        .toSet();

    final links = response.headers['link'];

    final lastLinks = links?.where(
          (link) => link.contains('rel="last"'),
        ) ??
        [];

    late final int? nextPageNumber;

    if (lastLinks.isNotEmpty) {
      nextPageNumber = repoAndOwnerAndCommitPageNumber.page! + 1;
    } else {
      nextPageNumber = null;
    }

    return CommitsPageData(
      commits: commits,
      nextPageNumber: nextPageNumber,
    );
  }
}
