import 'package:bloc/bloc.dart';
import 'package:flutter_app_template/domain/entities/user/entity.dart';
import 'package:flutter_app_template/domain/use_cases/get_users/use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'users_getter_state.dart';
part 'users_getter_cubit.freezed.dart';

class UsersGetterCubit extends Cubit<UsersGetterState> {
  UsersGetterCubit({
    required GetUsersByUsername getUsersByUsername,
  })   : _getUsersByUsername = getUsersByUsername,
        super(const UsersGetterState.idle());

  final GetUsersByUsername _getUsersByUsername;

  Future<void> getUsersByUsername(String username) async {
    emit(const UsersGetterState.loading());

    final failureOrUsers = await _getUsersByUsername(username);

    emit(
      failureOrUsers.fold(
        (failure) => UsersGetterState.failed(failure),
        (users) => UsersGetterState.done(users: users),
      ),
    );
  }
}
