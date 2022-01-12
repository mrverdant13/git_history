import 'package:dartz/dartz.dart';
import 'package:flutter_app_template/domain/entities/commit/entity.dart';
import 'package:flutter_app_template/domain/entities/repository/entity.dart';
import 'package:flutter_app_template/domain/entities/user/entity.dart';
import 'package:flutter_app_template/domain/facades/commits_repo/facade.dart';
import 'package:flutter_app_template/domain/use_cases/get_commits/use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/collection.dart';
import 'package:mocktail/mocktail.dart';

class MockCommitsRepo extends Mock implements CommitsRepo {}

class FakeRepoAndOwnerAndCommitPageNumber extends Fake
    implements RepoAndOwnerAndCommitPageNumber {}

void main() {
  // Facades
  late final MockCommitsRepo mockCommitsRepo;

  // Use case
  late final GetCommitsPageByRepoAndOwner getCommitsPageByRepoAndOwner;

  setUpAll(
    () {
      registerFallbackValue(
        FakeRepoAndOwnerAndCommitPageNumber(),
      );
    },
  );

  setUp(
    () {
      mockCommitsRepo = MockCommitsRepo();
      getCommitsPageByRepoAndOwner = GetCommitsPageByRepoAndOwner(
        commitsRepo: mockCommitsRepo,
      );
    },
  );

  test(
    '''

GIVEN a valid repository
AND a valid repository owner
AND a non-last-page number
WHEN a commits page is requested
THEN a commits page is returne containing a collection of commits and the next page number
''',
    () async {
      // ARRANGE
      const repo = Repository(id: 1, name: 'repo');
      const owner = User(id: 1, username: 'user1', avatarUrl: 'url1');
      const commitsPageNumber = 1;

      const repoNameAndOwner = RepoAndOwnerAndCommitPageNumber(
        repository: repo,
        owner: owner,
        page: commitsPageNumber,
      );

      final commitsPage = CommitsPage(
        commits: const [
          Commit(sha: 'sha1', message: 'msg1'),
          Commit(sha: 'sha2', message: 'msg2'),
          Commit(sha: 'sha3', message: 'msg3'),
        ].toImmutableSet(),
        nextPage: commitsPageNumber + 1,
      );

      when(
        () => mockCommitsRepo.getCommitsPageByRepoAndOwner(
          any(that: isA<RepoAndOwnerAndCommitPageNumber>()),
        ),
      ).thenAnswer(
        (_) async => Right(
          commitsPage,
        ),
      );

      // ACT
      final result = await getCommitsPageByRepoAndOwner(
        repoNameAndOwner,
      );

      // ASSERT
      expect(result, Right(commitsPage));
      verify(
        () => mockCommitsRepo.getCommitsPageByRepoAndOwner(repoNameAndOwner),
      ).called(1);
      verifyNoMoreInteractions(mockCommitsRepo);
    },
  );
}
