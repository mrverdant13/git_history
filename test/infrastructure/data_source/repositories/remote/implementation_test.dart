import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_app_template/domain/entities/user/entity.dart';
import 'package:flutter_app_template/domain/use_cases/get_repositories/use_case.dart';
import 'package:flutter_app_template/infrastructure/data_source/repositories/remote/implementation.dart';
import 'package:flutter_app_template/infrastructure/data_source/repositories/remote/interface.dart';
import 'package:flutter_app_template/infrastructure/models/repository/model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockDio extends Mock implements Dio {}

void main() {
  group(
    '''
GIVEN a repositories remote data source''',
    () {
      // External dependencies
      late MockDio mockDio;

      // Remota data source
      late RepositoriesRDSImp repositoriesRDS;

      setUp(
        () {
          mockDio = MockDio();
          repositoriesRDS = RepositoriesRDSImp(
            dio: mockDio,
          );
        },
      );

      test(
        '''

AND a repository name pattern
AND a valid repository owner
WHEN a repositories search is triggered
THEN a set of remote repository models with with names similar to the provided repository name pattern and the provided owner is returned
      ''',
        () async {
          // ARRANGE
          const repoNamePattern = 'repo';
          const repoOwner = User(id: 1, username: 'user1', avatarUrl: 'url1');
          const repoNameAndOwner = RepositoryNameAndOwner(
            repositoryName: repoNamePattern,
            repositoryOwner: repoOwner,
          );

          final repositoriesWithRepositorynamePattern = {
            const RepositoryR(id: 1, name: 'repo1'),
            const RepositoryR(id: 2, name: 'repo2'),
            const RepositoryR(id: 3, name: 'repo3'),
          };

          when(
            () => mockDio.get(
              any(),
              queryParameters: any(named: 'queryParameters'),
            ),
          ).thenAnswer(
            (_) async => Response(
              requestOptions: RequestOptions(path: ''),
              data: <String, dynamic>{
                'items': [
                  {
                    'id': 1,
                    'name': 'repo1',
                  },
                  {
                    'id': 2,
                    'name': 'repo2',
                  },
                  {
                    'id': 3,
                    'name': 'repo3',
                  },
                ],
              },
            ),
          );

          // ACT
          final result = await repositoriesRDS
              .getRepositoriesByNameAndOwner(repoNameAndOwner);

          // ASSERT
          expect(
              setEquals(result, repositoriesWithRepositorynamePattern), isTrue);
          verify(
            () => mockDio.get(
              '/search/repositories',
              queryParameters: {
                'q': 'repo+user:user1',
              },
            ),
          ).called(1);
        },
      );

      test(
        '''

AND any repository name pattern
AND any repository owner
AND no internet connection
WHEN a repositoriessearch is triggered
THEN an exception is thrown
      ''',
        () async {
          // ARRANGE
          const anyRepoNamePattern = 'abcdef';
          const anyRepoOwner = User(id: 1, username: 'abcd', avatarUrl: 'efgh');
          const anyRepoNameAndOwner = RepositoryNameAndOwner(
            repositoryName: anyRepoNamePattern,
            repositoryOwner: anyRepoOwner,
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
          Future<void> action() async => repositoriesRDS
              .getRepositoriesByNameAndOwner(anyRepoNameAndOwner);

          // ASSERT
          expect(
            action,
            throwsA(
              const GetRepositoriesException.offline(),
            ),
          );
          verify(
            () => mockDio.get(
              '/search/repositories',
              queryParameters: {
                'q': 'abcdef+user:abcd',
              },
            ),
          ).called(1);
          verifyNoMoreInteractions(mockDio);
        },
      );
    },
  );
}
