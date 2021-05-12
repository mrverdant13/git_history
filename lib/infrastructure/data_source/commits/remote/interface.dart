import 'package:flutter_app_template/domain/use_cases/get_commits/use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

import '../../../models/commit/model.dart';

part 'interface.freezed.dart';

abstract class CommitsRDS {
  const CommitsRDS();

  /// Get commits page data with attributes defined by the given [repoAndOwnerAndCommitPageNumber].
  ///
  /// Throws [GetCommitsException]:
  /// - [GetCommitsException.offline]: No internet connection.
  Future<CommitsPageData> getCommitsPageDataByRepoAndOwner(
    RepoAndOwnerAndCommitPageNumber repoAndOwnerAndCommitPageNumber,
  );
}

@freezed
class GetCommitsException with _$GetCommitsException {
  const factory GetCommitsException.offline() = _GetCommitsExceptionOffline;
}

class CommitsPageData extends KtPair<Set<CommitR>, int?> {
  CommitsPageData({
    required Set<CommitR> commits,
    required int? nextPageNumber,
  }) : super(
          commits,
          nextPageNumber,
        );

  Set<CommitR> get commits => first;
  int? get nextPageNumber => second;
}
