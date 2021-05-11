import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_app_template/domain/entities/user/entity.dart';
import 'package:flutter_app_template/domain/use_cases/get_users/use_case.dart';
import 'package:flutter_app_template/state_management/cubit/users_getter/users_getter_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/collection.dart';
import 'package:mocktail/mocktail.dart';

class MockGetUsersByUsername extends Mock implements GetUsersByUsername {}

void main() {
  group(
    '''
GIVEN a users getter cubit''',
    () {
      // Use cases
      late MockGetUsersByUsername mockGetUsersByUsername;

      // Cubit
      late UsersGetterCubit usersGetterCubit;

      setUp(
        () {
          mockGetUsersByUsername = MockGetUsersByUsername();
          usersGetterCubit = UsersGetterCubit(
            getUsersByUsername: mockGetUsersByUsername,
          );
        },
      );

      test(
        '''

WHEN no interaction
THEN its initial state is idle
''',
        () async {
          // ARRANGE

          // ACT

          // ASSERT
          expect(usersGetterCubit.state, const UsersGetterState.idle());
        },
      );

      group(
        '''

AND a username pattern''',
        () {
          late final String username;
          late final KtSet<User> usersWithUsernamePattern;

          setUp(
            () {
              username = 'user';
              usersWithUsernamePattern = const [
                User(id: 1, username: 'user1', avatarUrl: 'url1'),
                User(id: 2, username: 'user2', avatarUrl: 'url2'),
                User(id: 3, username: 'user3', avatarUrl: 'url3'),
              ].toImmutableSet();
            },
          );

          blocTest<UsersGetterCubit, UsersGetterState>(
            '''

WHEN a users search is triggered
THEN the search process is started
THEN a set of users with usernames similar to the provided one is emited
      ''',
            build: () {
              when(
                () => mockGetUsersByUsername(
                  any(),
                ),
              ).thenAnswer(
                (_) async => Right(
                  usersWithUsernamePattern,
                ),
              );

              return usersGetterCubit;
            },
            act: (cubit) {
              cubit.getUsersByUsername(username);
            },
            expect: () => [
              const UsersGetterState.loading(),
              UsersGetterState.done(
                users: usersWithUsernamePattern,
              ),
            ],
            verify: (bloc) {
              verify(() => mockGetUsersByUsername.call(username)).called(1);
              verifyNoMoreInteractions(mockGetUsersByUsername);
            },
          );
        },
      );

      group(
        '''

AND any username pattern
AND no internet connection''',
        () {
          late final String username;

          setUp(
            () {
              username = 'abcdef';
            },
          );

          blocTest<UsersGetterCubit, UsersGetterState>(
            '''

WHEN a users search is triggered
THEN the search process is started
THEN a failure is emited
      ''',
            build: () {
              when(
                () => mockGetUsersByUsername(
                  any(),
                ),
              ).thenAnswer(
                (_) async => const Left(
                  GetUsersFailure.offline(),
                ),
              );

              return usersGetterCubit;
            },
            act: (cubit) {
              cubit.getUsersByUsername(username);
            },
            expect: () => [
              const UsersGetterState.loading(),
              const UsersGetterState.failed(
                GetUsersFailure.offline(),
              ),
            ],
            verify: (bloc) {
              verify(() => mockGetUsersByUsername.call(username)).called(1);
              verifyNoMoreInteractions(mockGetUsersByUsername);
            },
          );
        },
      );
    },
  );
}
