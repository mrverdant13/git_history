import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_app_template/domain/entities/repository/entity.dart';
import 'package:flutter_app_template/domain/entities/user/entity.dart';
import 'package:flutter_app_template/domain/use_cases/get_repositories/use_case.dart';
import 'package:flutter_app_template/state_management/cubit/repositories_getter/repositories_getter_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/collection.dart';
import 'package:mocktail/mocktail.dart';

class MockGetRepositoriesByNameAndOwner extends Mock
    implements GetRepositoriesByNameAndOwner {}

class FakeRepositoryNameAndOwner extends Fake
    implements RepositoryNameAndOwner {}

void main() {
  group(
    '''

GIVEN a repositories getter cubit''',
    () {
      // Use cases
      late MockGetRepositoriesByNameAndOwner mockGetRepositoriesByNameAndOwner;

      // Cubit
      late RepositoriesGetterCubit repositoriesGetterCubit;

      setUpAll(
        () {
          registerFallbackValue(
            FakeRepositoryNameAndOwner(),
          );
        },
      );

      setUp(
        () {
          mockGetRepositoriesByNameAndOwner =
              MockGetRepositoriesByNameAndOwner();
          repositoriesGetterCubit = RepositoriesGetterCubit(
            getRepositoriesByNameAndOwner: mockGetRepositoriesByNameAndOwner,
          );
        },
      );

      test(
        '''

WHEN no interaction
THEN its initial state is idle
''',
        () async {
          // ARRANGE

          // ACT

          // ASSERT
          expect(repositoriesGetterCubit.state,
              const RepositoriesGetterState.idle());
        },
      );

      group(
        '''

AND a repository name pattern
AND a valid repository owner''',
        () {
          late final RepositoryNameAndOwner repoNameAndOwner;
          late final KtSet<Repository> expectedFoundRepos;

          setUp(
            () {
              const repoNamePattern = 'repo';
              const repoOwner = User(
                id: 1,
                username: 'user1',
                avatarUrl: 'url1',
              );

              repoNameAndOwner = const RepositoryNameAndOwner(
                repositoryName: repoNamePattern,
                repositoryOwner: repoOwner,
              );

              expectedFoundRepos = const [
                Repository(id: 1, name: 'repo1'),
                Repository(id: 2, name: 'repo2'),
                Repository(id: 3, name: 'repo3'),
              ].toImmutableSet();
            },
          );

          blocTest<RepositoriesGetterCubit, RepositoriesGetterState>(
            '''

WHEN a repositories search is triggered
THEN the search process is started
THEN a set of repositories with names similar to the provided repository name pattern and the provided owner is returned
      ''',
            build: () {
              when(
                () => mockGetRepositoriesByNameAndOwner(
                  any(),
                ),
              ).thenAnswer(
                (_) async => Right(
                  expectedFoundRepos,
                ),
              );

              return repositoriesGetterCubit;
            },
            act: (cubit) {
              cubit.getRepositoriesByNameAndOwner(repoNameAndOwner);
            },
            expect: () => [
              const RepositoriesGetterState.loading(),
              RepositoriesGetterState.done(
                repositories: expectedFoundRepos,
              ),
            ],
            verify: (bloc) {
              verify(
                () => mockGetRepositoriesByNameAndOwner.call(repoNameAndOwner),
              ).called(1);
              verifyNoMoreInteractions(mockGetRepositoriesByNameAndOwner);
            },
          );
        },
      );

      group(
        '''

AND any repository name pattern
AND any user
AND no internet connection''',
        () {
          late final RepositoryNameAndOwner anyRepoNameAndOwner;

          setUp(
            () {
              const anyRepoNamePattern = 'repo';
              const anyRepoOwner = User(
                id: 1,
                username: 'user1',
                avatarUrl: 'url1',
              );

              anyRepoNameAndOwner = const RepositoryNameAndOwner(
                repositoryName: anyRepoNamePattern,
                repositoryOwner: anyRepoOwner,
              );
            },
          );

          blocTest<RepositoriesGetterCubit, RepositoriesGetterState>(
            '''

WHEN a repositories search is triggered
THEN the search process is started
THEN a failure is emited
      ''',
            build: () {
              when(
                () => mockGetRepositoriesByNameAndOwner(
                  any(),
                ),
              ).thenAnswer(
                (_) async => const Left(
                  GetRepositoriesFailure.offline(),
                ),
              );

              return repositoriesGetterCubit;
            },
            act: (cubit) {
              cubit.getRepositoriesByNameAndOwner(anyRepoNameAndOwner);
            },
            expect: () => [
              const RepositoriesGetterState.loading(),
              const RepositoriesGetterState.failed(
                GetRepositoriesFailure.offline(),
              ),
            ],
            verify: (bloc) {
              verify(
                () =>
                    mockGetRepositoriesByNameAndOwner.call(anyRepoNameAndOwner),
              ).called(1);
              verifyNoMoreInteractions(mockGetRepositoriesByNameAndOwner);
            },
          );
        },
      );
    },
  );
}
