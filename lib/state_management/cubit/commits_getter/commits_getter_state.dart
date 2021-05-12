part of 'commits_getter_cubit.dart';

@freezed
class CommitsGetterState with _$CommitsGetterState {
  const factory CommitsGetterState.idle() = _CommitsGetterStateIdle;
  const factory CommitsGetterState.loading() = _CommitsGetterStateLoading;
  const factory CommitsGetterState.done({
    required CommitsPage commitsPage,
  }) = _CommitsGetterStateDone;
  const factory CommitsGetterState.failed(
    GetCommitsFailure failure,
  ) = _CommitsGetterStateFailed;
}
