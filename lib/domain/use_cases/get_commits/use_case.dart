import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

import '../../entities/commit/entity.dart';
import '../../entities/repository/entity.dart';
import '../../entities/user/entity.dart';
import '../../facades/commits_repo/facade.dart';
import '../types.dart';

part 'failures.dart';
part 'use_case.freezed.dart';

class GetCommitsPageByRepoAndOwner extends FutureUseCase<GetCommitsFailure,
    CommitsPage, RepoAndOwnerAndCommitPageNumber> {
  const GetCommitsPageByRepoAndOwner({
    required this.commitsRepo,
  });

  final CommitsRepo commitsRepo;

  @override
  Future<Either<GetCommitsFailure, CommitsPage>> call(
    RepoAndOwnerAndCommitPageNumber repoAndOwnerAndCommitPage,
  ) =>
      commitsRepo.getCommitsPageByRepoAndOwner(
        repoAndOwnerAndCommitPage,
      );
}

@freezed
class RepoAndOwnerAndCommitPageNumber with _$RepoAndOwnerAndCommitPageNumber {
  const factory RepoAndOwnerAndCommitPageNumber({
    required Repository repository,
    required User owner,
    @Default(1) int? page,
  }) = _RepoAndOwnerAndCommitPageNumber;
}

@freezed
class CommitsPage with _$CommitsPage {
  const factory CommitsPage({
    required KtSet<Commit> commits,
    required int? nextPage,
  }) = _CommitsPage;
}
