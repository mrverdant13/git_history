import 'package:dartz/dartz.dart';
import 'package:flutter_app_template/domain/entities/repository/entity.dart';
import 'package:flutter_app_template/domain/entities/user/entity.dart';
import 'package:flutter_app_template/domain/facades/repositories_repo/facade.dart';
import 'package:flutter_app_template/domain/use_cases/get_repositories/use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/collection.dart';
import 'package:mocktail/mocktail.dart';

class MockRepositoriesRepo extends Mock implements RepositoriesRepo {}

class FakeRepositoryNameAndOwner extends Fake
    implements RepositoryNameAndOwner {}

void main() {
  // Facades
  late final MockRepositoriesRepo mockRepositoriesRepo;

  // Use case
  late final GetRepositoriesByNameAndOwner getRepositoriesByNameAndOwner;

  setUpAll(
    () {
      registerFallbackValue(
        FakeRepositoryNameAndOwner(),
      );
    },
  );

  setUp(
    () {
      mockRepositoriesRepo = MockRepositoriesRepo();
      getRepositoriesByNameAndOwner = GetRepositoriesByNameAndOwner(
        repositoriesRepo: mockRepositoriesRepo,
      );
    },
  );

  test(
    '''
GIVEN a repository name pattern
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

      final reposWithNamePattern = const [
        Repository(id: 1, name: 'repo1'),
        Repository(id: 2, name: 'repo2'),
        Repository(id: 3, name: 'repo3'),
      ].toImmutableSet();

      when(
        () => mockRepositoriesRepo.getRepositoriesByNameAndOwner(
          any(that: isA<RepositoryNameAndOwner>()),
        ),
      ).thenAnswer(
        (_) async => Right(
          reposWithNamePattern,
        ),
      );

      // ACT
      final result = await getRepositoriesByNameAndOwner(
        repoNameAndOwner,
      );

      // ASSERT
      expect(result, Right(reposWithNamePattern));
      verify(
        () => mockRepositoriesRepo
            .getRepositoriesByNameAndOwner(repoNameAndOwner),
      ).called(1);
      verifyNoMoreInteractions(mockRepositoriesRepo);
    },
  );
}
