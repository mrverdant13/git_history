part of 'users_getter_cubit.dart';

@freezed
class UsersGetterState with _$UsersGetterState {
  const factory UsersGetterState.idle() = _UsersGetterStateIdle;
  const factory UsersGetterState.loading() = _UsersGetterStateLoading;
  const factory UsersGetterState.done({
    required KtSet<User> users,
  }) = _UsersGetterStateDone;
  const factory UsersGetterState.failed(
    GetUsersFailure failure,
  ) = _UsersGetterStateFailed;
}
