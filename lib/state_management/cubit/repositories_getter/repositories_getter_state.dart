part of 'repositories_getter_cubit.dart';

@freezed
class RepositoriesGetterState with _$RepositoriesGetterState {
  const factory RepositoriesGetterState.idle() = _RepositoriesGetterStateIdle;
  const factory RepositoriesGetterState.loading() = _RepositoriesGetterStateLoading;
  const factory RepositoriesGetterState.done({
    required KtSet<Repository> repositories,
  }) = _RepositoriesGetterStateDone;
  const factory RepositoriesGetterState.failed(
    GetRepositoriesFailure failure,
  ) = _RepositoriesGetterStateFailed;
}
