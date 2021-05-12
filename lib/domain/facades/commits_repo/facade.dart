import 'package:dartz/dartz.dart';

import '../../use_cases/get_commits/use_case.dart';

abstract class CommitsRepo {
  const CommitsRepo();

  Future<Either<GetCommitsFailure, CommitsPage>> getCommitsPageByRepoAndOwner(
    RepoAndOwnerAndCommitPageNumber repoAndOwnerAndCommitPageNumber,
  );
}
