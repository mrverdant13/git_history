import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';

import '../../domain/facades/commits_repo/facade.dart';
import '../../domain/use_cases/get_commits/use_case.dart';
import '../data_source/commits/remote/interface.dart';
import '../models/commit/model.dart';

class CommitsRepoImp extends CommitsRepo {
  const CommitsRepoImp({
    required this.commitsRDS,
  });

  final CommitsRDS commitsRDS;

  @override
  Future<Either<GetCommitsFailure, CommitsPage>> getCommitsPageByRepoAndOwner(
    RepoAndOwnerAndCommitPageNumber repoAndOwnerAndCommitPageNumber,
  ) async {
    late final CommitsPageData commitsPageData;

    try {
      commitsPageData = await commitsRDS.getCommitsPageDataByRepoAndOwner(
        repoAndOwnerAndCommitPageNumber,
      );
    } on GetCommitsException catch (e) {
      return Left(
        e.when(
          offline: () => const GetCommitsFailure.offline(),
        ),
      );
    }

    final commitsPage = CommitsPage(
      commits: commitsPageData.commits
          .map(
            (rCommit) => rCommit.asEntity,
          )
          .toImmutableSet(),
      nextPage: commitsPageData.nextPageNumber,
    );

    return Right(commitsPage);
  }
}
