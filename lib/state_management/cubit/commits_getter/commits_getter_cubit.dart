import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/use_cases/get_commits/use_case.dart';

part 'commits_getter_cubit.freezed.dart';
part 'commits_getter_state.dart';

class CommitsGetterCubit extends Cubit<CommitsGetterState> {
  CommitsGetterCubit({
    required GetCommitsPageByRepoAndOwner getCommitsPageByRepoAndOwner,
  })   : _getCommitsPageByRepoAndOwner = getCommitsPageByRepoAndOwner,
        super(const CommitsGetterState.idle());

  final GetCommitsPageByRepoAndOwner _getCommitsPageByRepoAndOwner;

  late RepoAndOwnerAndCommitPageNumber _lastRepoAndOwnerAndCommitPageNumber;

  Future<void> getNextCommitsByRepoAndOwner(
    RepoAndOwnerAndCommitPageNumber repoAndOwnerAndCommitPageNumber,
  ) async {
    emit(const CommitsGetterState.loading());

    _lastRepoAndOwnerAndCommitPageNumber = repoAndOwnerAndCommitPageNumber;

    final failureOrCommits = await _getCommitsPageByRepoAndOwner(
      repoAndOwnerAndCommitPageNumber,
    );

    emit(
      failureOrCommits.fold(
        (failure) => CommitsGetterState.failed(failure),
        (commitsPage) => CommitsGetterState.done(
          commitsPage: commitsPage,
        ),
      ),
    );
  }

  Future<void> refreshPage() async => getNextCommitsByRepoAndOwner(
        _lastRepoAndOwnerAndCommitPageNumber,
      );
}
