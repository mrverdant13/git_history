import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_app_template/domain/entities/repository/entity.dart';
import 'package:flutter_app_template/domain/entities/user/entity.dart';
import 'package:flutter_app_template/domain/use_cases/get_commits/use_case.dart';
import 'package:flutter_app_template/infrastructure/data_source/commits/remote/implementation.dart';
import 'package:flutter_app_template/infrastructure/data_source/commits/remote/interface.dart';
import 'package:flutter_app_template/infrastructure/models/commit/model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockDio extends Mock implements Dio {}

void main() {
  group(
    '''

GIVEN a commits remote data source''',
    () {
      // External dependencies
      late MockDio mockDio;

      // Remota data source
      late CommitsRDSImp commitsRDS;

      setUp(
        () {
          mockDio = MockDio();
          commitsRDS = CommitsRDSImp(
            dio: mockDio,
          );
        },
      );

      test(
        '''

AND a valid repository
AND a valid repository owner
AND a non-last-commit-page number
WHEN a commits page is requested
THEN a commits page is returne containing a collection of commits and the next page number
      ''',
        () async {
          // ARRANGE
          const repo = Repository(id: 1, name: 'repo');
          const owner = User(id: 1, username: 'user', avatarUrl: 'url');
          const commitsPageNumber = 1;

          const repoAndOwnerAndCommitPageNumber =
              RepoAndOwnerAndCommitPageNumber(
            repository: repo,
            owner: owner,
            page: commitsPageNumber,
          );

          final commitsPageData = CommitsPageData(
            commits: {
              const CommitR(sha: 'sha1', message: 'msg1'),
              const CommitR(sha: 'sha2', message: 'msg2'),
              const CommitR(sha: 'sha3', message: 'msg3'),
            },
            nextPageNumber: commitsPageNumber + 1,
          );

          when(
            () => mockDio.get(
              any(),
              queryParameters: any(named: 'queryParameters'),
            ),
          ).thenAnswer(
            (_) async => Response(
              requestOptions: RequestOptions(path: ''),
              data: [
                {
                  'sha': 'sha1',
                  'commit': {
                    'message': 'msg1',
                  }
                },
                {
                  'sha': 'sha2',
                  'commit': {
                    'message': 'msg2',
                  }
                },
                {
                  'sha': 'sha3',
                  'commit': {
                    'message': 'msg3',
                  }
                },
              ],
              headers: Headers.fromMap({
                'link': [
                  '1234567890,rel="last"',
                ],
              }),
            ),
          );

          // ACT
          final result = await commitsRDS.getCommitsPageDataByRepoAndOwner(
            repoAndOwnerAndCommitPageNumber,
          );

          // ASSERT
          expect(setEquals(result.commits, commitsPageData.commits), isTrue);
          expect(result.nextPageNumber, commitsPageData.nextPageNumber);
          verify(
            () => mockDio.get(
              '/repos/user/repo/commits',
              queryParameters: {
                'page': '1',
              },
            ),
          ).called(1);
        },
      );

      test(
        '''

AND any repository
AND any user
AND any commits page number
AND no internet connection
WHEN a commits page is requested
THEN an exception is thrown
      ''',
        () async {
          // ARRANGE
          const anyRepo = Repository(id: 1, name: 'repo');
          const anyUser = User(id: 1, username: 'user', avatarUrl: 'url');
          const anyCommitsPageNumber = 1;

          const anyRepoAndOwnerAndCommitPageNumber =
              RepoAndOwnerAndCommitPageNumber(
            repository: anyRepo,
            owner: anyUser,
            page: anyCommitsPageNumber,
          );

          when(
            () => mockDio.get(
              any(),
              queryParameters: any(named: 'queryParameters'),
            ),
          ).thenThrow(
            DioError(
              requestOptions: RequestOptions(
                path: '',
              ),
              // ignore: avoid_redundant_argument_values
              type: DioErrorType.other,
              error: const SocketException(''),
            ),
          );

          // ACT
          Future<void> action() async =>
              commitsRDS.getCommitsPageDataByRepoAndOwner(
                anyRepoAndOwnerAndCommitPageNumber,
              );

          // ASSERT
          expect(
            action,
            throwsA(
              const GetCommitsException.offline(),
            ),
          );
          verify(
            () => mockDio.get(
              '/repos/user/repo/commits',
              queryParameters: {
                'page': '1',
              },
            ),
          ).called(1);
          verifyNoMoreInteractions(mockDio);
        },
      );
    },
  );
}
