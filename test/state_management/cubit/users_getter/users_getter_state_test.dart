import 'package:flutter_app_template/domain/entities/user/entity.dart';
import 'package:flutter_app_template/domain/use_cases/get_users/use_case.dart';
import 'package:flutter_app_template/state_management/cubit/users_getter/users_getter_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/collection.dart';

void main() {
  test(
    '''
GIVEN two states of same type and with same attributes
WHEN they are compared
THEN they should match
''',
    () async {
      // ARRANGE
      const idleState1 = UsersGetterState.idle();
      const idleState2 = UsersGetterState.idle();

      const loadingState1 = UsersGetterState.loading();
      const loadingState2 = UsersGetterState.loading();

      const doneStateWithNoUsers1 = UsersGetterState.done(
        users: KtSet.empty(),
      );
      const doneStateWithNoUsers2 = UsersGetterState.done(
        users: KtSet.empty(),
      );

      final users = List.generate(
        3,
        (index) => User(
          id: index,
          username: 'user$index',
          avatarUrl: 'url$index',
        ),
      ).toImmutableSet();
      final doneStateWithUsers1 = UsersGetterState.done(users: users);
      final doneStateWithUsers2 = UsersGetterState.done(users: users);

      const failedState1 = UsersGetterState.failed(GetUsersFailure.offline());
      const failedState2 = UsersGetterState.failed(GetUsersFailure.offline());

      // ACT

      // ASSERT
      expect(idleState1, idleState2);
      expect(loadingState1, loadingState2);
      expect(doneStateWithNoUsers1, doneStateWithNoUsers2);
      expect(doneStateWithUsers1, doneStateWithUsers2);
      expect(failedState1, failedState2);
    },
  );
}
