import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_template/domain/entities/user/entity.dart';
import 'package:flutter_app_template/presentation/screens/selection/screen.dart';
import 'package:flutter_app_template/presentation/screens/selection/widgets/user_tile.dart';
import 'package:flutter_app_template/state_management/cubit/users_getter/users_getter_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:kt_dart/collection.dart';
import 'package:mocktail/mocktail.dart';

import '../../../helpers/pump_screen.dart';

// class MockSelectionFormGroup extends Mock implements SelectionFormGroup {}

class MockUsersGetterCubit extends MockCubit<UsersGetterState>
    implements UsersGetterCubit {}

void main() {
  group(
    '''

GIVEN a selection screen''',
    () {
      // Service locator
      late GetIt getIt;

      // State managers
      // late MockSelectionFormGroup mockSelectionFormGroup;
      late MockUsersGetterCubit mockUsersGetterCubit;

      setUpAll(
        () {
          registerFallbackValue(const UsersGetterState.idle());
        },
      );

      setUp(
        () {
          getIt = GetIt.instance;

          // mockSelectionFormGroup = MockSelectionFormGroup();
          mockUsersGetterCubit = MockUsersGetterCubit();

          getIt.registerFactory<UsersGetterCubit>(
            () => mockUsersGetterCubit,
          );
        },
      );

      tearDown(
        () {
          getIt.reset();
        },
      );

      group(
        '''

AND no user interaction''',
        () {
          setUp(
            () {
              // ARRANGE
              when(
                () => mockUsersGetterCubit.state,
              ).thenReturn(
                const UsersGetterState.idle(),
              );
            },
          );

          testWidgets(
            '''

WHEN the screen is launched
THEN the screen is rendered
AND no user is displayed
''',
            (tester) async {
              // ARRANGE

              // ACT
              await tester.pumpScreen(
                screenWidget: const SelectionScreen(),
              );

              // ASSERT
              expect(find.byType(SelectionScreen), findsOneWidget);
              expect(find.byType(UserTile), findsNothing);
            },
          );

          testWidgets(
            '''

AND no username entered
WHEN the search button is tapped
THEN an error message is displayed
AND no user is displayed
AND users search is not triggered
''',
            (tester) async {
              // ARRANGE
              final usernameTextFieldFinder = find.byType(TextField);
              await tester.pumpScreen(
                screenWidget: const SelectionScreen(),
              );
              await tester.enterText(usernameTextFieldFinder, '');

              // ACT
              await tester.tap(find.byType(ElevatedButton));
              await tester.pumpAndSettle();

              // ASSERT
              expect(
                tester
                    .widget<TextField>(usernameTextFieldFinder)
                    .decoration
                    ?.errorText,
                isNotNull,
              );
              expect(find.byType(UserTile), findsNothing);
              verifyNever(
                () => mockUsersGetterCubit.getUsersByUsername(any()),
              );
            },
          );

          testWidgets(
            '''

AND an entered username
WHEN the search button is tapped
THEN no error message is displayed
AND a users search is triggered
''',
            (tester) async {
              // ARRANGE
              final usernameTextFieldFinder = find.byType(TextField);
              await tester.pumpScreen(
                screenWidget: const SelectionScreen(),
              );
              await tester.enterText(usernameTextFieldFinder, 'user');
              when(
                () => mockUsersGetterCubit.getUsersByUsername(
                  any(),
                ),
              ).thenAnswer(
                (_) async => 0,
              );

              // ACT
              await tester.tap(find.byType(ElevatedButton));
              await tester.pumpAndSettle();

              // ASSERT
              expect(
                tester
                    .widget<TextField>(usernameTextFieldFinder)
                    .decoration
                    ?.errorText,
                isNull,
              );
              verify(
                () => mockUsersGetterCubit.getUsersByUsername('user'),
              ).called(1);
            },
          );
        },
      );
      group(
        '''

AND a successful users search''',
        () {
          const foundUsersCount = 3;
          setUp(
            () {
              // ARRANGE
              when(
                () => mockUsersGetterCubit.state,
              ).thenReturn(
                UsersGetterState.done(
                  users: List.generate(
                    foundUsersCount,
                    (index) => User(
                      id: index,
                      username: 'user$index',
                      avatarUrl: 'url$index',
                    ),
                  ).toImmutableSet(),
                ),
              );
            },
          );

          testWidgets(
            '''

WHEN the screen is rendered
THEN a users list is displayed
''',
            (tester) async {
              // ARRANGE

              // ACT
              await tester.pumpScreen(
                screenWidget: const SelectionScreen(),
              );

              // ASSERT
              expect(find.byType(UserTile), findsNWidgets(foundUsersCount));
            },
          );
        },
      );
    },
  );
}
