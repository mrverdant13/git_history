import 'package:dartz/dartz.dart';
import 'package:flutter_app_template/domain/entities/user/entity.dart';
import 'package:flutter_app_template/domain/use_cases/get_repositories/use_case.dart';
import 'package:flutter_app_template/infrastructure/data_source/repositories/remote/interface.dart';
import 'package:flutter_app_template/infrastructure/facades/repositories_repo.dart';
import 'package:flutter_app_template/infrastructure/models/repository/model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/collection.dart';
import 'package:mocktail/mocktail.dart';

class MockRepositoriesRDS extends Mock implements RepositoriesRDS {}

class FakeRepositoryNameAndOwner extends Fake
    implements RepositoryNameAndOwner {}

void main() {
  group(
    '''
GIVEN a repositories repository implementation''',
    () {
// Remote data sources
      late MockRepositoriesRDS mockRepositoriesRDS;

      // Facades
      late RepositoriesRepoImp repositoriesRepo;

      setUpAll(
        () {
          registerFallbackValue(
            FakeRepositoryNameAndOwner(),
          );
        },
      );

      setUp(
        () {
          mockRepositoriesRDS = MockRepositoriesRDS();
          repositoriesRepo = RepositoriesRepoImp(
            repositoriesRDS: mockRepositoriesRDS,
          );
        },
      );

      test(
        '''

AND a repository name pattern
AND a valid repository owner
WHEN a repositories search is triggered
THEN a collection of repositories with names similar to the provided repository name pattern and the provided owner is returned
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
            () => mockRepositoriesRDS.getRepositoriesByRepositoryname(
              any(),
            ),
          ).thenAnswer(
            (_) async => repositoriesWithRepositorynamePattern,
          );

          // ACT
          final result = await repositoriesRepo
              .getRepositoriesByNameAndOwner(repoNameAndOwner);

          // ASSERT
          expect(
            result,
            Right(
              repositoriesWithRepositorynamePattern
                  .map(
                    (repositoryWithRepositorynamePattern) =>
                        repositoryWithRepositorynamePattern.asEntity,
                  )
                  .toImmutableSet(),
            ),
          );
          verify(
            () => mockRepositoriesRDS
                .getRepositoriesByRepositoryname(repoNameAndOwner),
          ).called(1);
          verifyNoMoreInteractions(mockRepositoriesRDS);
        },
      );

      test(
        '''

AND any repository name pattern
AND any repository owner
AND no internet connection
WHEN a repositories search is triggered
THEN a failure is returned
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
            () => mockRepositoriesRDS.getRepositoriesByRepositoryname(any()),
          ).thenThrow(
            const GetRepositoriesException.offline(),
          );

          // ACT
          final result = await repositoriesRepo
              .getRepositoriesByNameAndOwner(anyRepoNameAndOwner);

          // ASSERT
          expect(
            result,
            const Left(
              GetRepositoriesFailure.offline(),
            ),
          );
          verify(
            () => mockRepositoriesRDS.getRepositoriesByRepositoryname(any()),
          ).called(1);
          verifyNoMoreInteractions(mockRepositoriesRDS);
        },
      );
    },
  );
}
