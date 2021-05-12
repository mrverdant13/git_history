import 'package:dartz/dartz.dart';
import 'package:flutter_app_template/domain/entities/repository/entity.dart';
import 'package:flutter_app_template/domain/entities/user/entity.dart';
import 'package:flutter_app_template/domain/use_cases/get_commits/use_case.dart';
import 'package:flutter_app_template/infrastructure/data_source/commits/remote/interface.dart';
import 'package:flutter_app_template/infrastructure/facades/commits_repo.dart';
import 'package:flutter_app_template/infrastructure/models/commit/model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/collection.dart';
import 'package:mocktail/mocktail.dart';

class MockCommitsRDS extends Mock implements CommitsRDS {}

class FakeRepoAndOwnerAndCommitPageNumber extends Fake
    implements RepoAndOwnerAndCommitPageNumber {}

void main() {
  group(
    '''

GIVEN a commits repo implementation''',
    () {
// Remote data sources
      late MockCommitsRDS mockCommitsRDS;

      // Facades
      late CommitsRepoImp commitsRepo;

      setUpAll(
        () {
          registerFallbackValue(
            FakeRepoAndOwnerAndCommitPageNumber(),
          );
        },
      );

      setUp(
        () {
          mockCommitsRDS = MockCommitsRDS();
          commitsRepo = CommitsRepoImp(
            commitsRDS: mockCommitsRDS,
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
          const owner = User(id: 1, username: 'user1', avatarUrl: 'url1');
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

          final commitsPage = CommitsPage(
            commits: commitsPageData.commits
                .map(
                  (rCommit) => rCommit.asEntity,
                )
                .toImmutableSet(),
            nextPage: commitsPageData.nextPageNumber,
          );

          when(
            () => mockCommitsRDS.getCommitsPageDataByRepoAndOwner(
              any(),
            ),
          ).thenAnswer(
            (_) async => commitsPageData,
          );

          // ACT
          final result = await commitsRepo.getCommitsPageByRepoAndOwner(
            repoAndOwnerAndCommitPageNumber,
          );

          // ASSERT
          expect(
            result,
            Right(commitsPage),
          );
          verify(
            () => mockCommitsRDS.getCommitsPageDataByRepoAndOwner(
              repoAndOwnerAndCommitPageNumber,
            ),
          ).called(1);
          verifyNoMoreInteractions(mockCommitsRDS);
        },
      );

      test(
        '''

AND any repository
AND any user
AND any commits page number
AND no internet connection
WHEN a commits page is requested
THEN a failure is returned
''',
        () async {
          // ARRANGE
          const anyRepo = Repository(id: 1, name: 'repo');
          const anyUser = User(id: 1, username: 'user1', avatarUrl: 'url1');
          const anyCommitsPageNumber = 1;

          const anyRepoAndOwnerAndCommitPageNumber =
              RepoAndOwnerAndCommitPageNumber(
            repository: anyRepo,
            owner: anyUser,
            page: anyCommitsPageNumber,
          );

          when(
            () => mockCommitsRDS.getCommitsPageDataByRepoAndOwner(any()),
          ).thenThrow(
            const GetCommitsException.offline(),
          );

          // ACT
          final result = await commitsRepo.getCommitsPageByRepoAndOwner(
            anyRepoAndOwnerAndCommitPageNumber,
          );

          // ASSERT
          expect(
            result,
            const Left(
              GetCommitsFailure.offline(),
            ),
          );
          verify(
            () => mockCommitsRDS.getCommitsPageDataByRepoAndOwner(
              anyRepoAndOwnerAndCommitPageNumber,
            ),
          ).called(1);
          verifyNoMoreInteractions(mockCommitsRDS);
        },
      );
    },
  );
}
