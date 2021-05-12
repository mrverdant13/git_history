import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_app_template/domain/entities/repository/entity.dart';
import 'package:flutter_app_template/domain/entities/user/entity.dart';
import 'package:flutter_app_template/domain/use_cases/get_commits/use_case.dart';
import 'package:flutter_app_template/presentation/screens/git_commits_history/screen.dart';
import 'package:flutter_app_template/state_management/change_notifier/global_store/global_store_change_notifier.dart';
import 'package:flutter_app_template/state_management/cubit/commits_getter/commits_getter_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mocktail/mocktail.dart';
import 'package:provider/provider.dart';

import '../../../helpers/pump_screen.dart';

class MockCommitsGetterCubit extends MockCubit<CommitsGetterState>
    implements CommitsGetterCubit {}

class FakeCommitsGetterState extends Fake implements CommitsGetterState {}

class FakeRepoAndOwnerAndCommitPageNumber extends Fake
    implements RepoAndOwnerAndCommitPageNumber {}

class MockGlobalStoreChangeNotifier extends Mock
    implements GlobalStoreChangeNotifier {}

void main() {
  group(
    '''

GIVEN a git commits history screen''',
    () {
      // Service locator
      late GetIt getIt;

      // State managers
      late MockCommitsGetterCubit mockCommitsGetterCubit;
      late MockGlobalStoreChangeNotifier mockGlobalStoreChangeNotifier;

      setUpAll(
        () {
          registerFallbackValue(FakeCommitsGetterState());
          registerFallbackValue(FakeRepoAndOwnerAndCommitPageNumber());
        },
      );

      setUp(
        () {
          getIt = GetIt.instance;

          mockCommitsGetterCubit = MockCommitsGetterCubit();
          mockGlobalStoreChangeNotifier = MockGlobalStoreChangeNotifier();

          getIt.registerFactory<CommitsGetterCubit>(
            () => mockCommitsGetterCubit,
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
          testWidgets(
            '''

WHEN the screen is launched
THEN the screen is rendered
''',
            (tester) async {
              // ARRANGE
              when(
                () => mockCommitsGetterCubit.getNextCommitsByRepoAndOwner(
                  any(),
                ),
              ).thenAnswer(
                (_) async => 0,
              );
              when(
                () => mockCommitsGetterCubit.state,
              ).thenReturn(
                const CommitsGetterState.idle(),
              );
              when(
                () => mockGlobalStoreChangeNotifier.selectedRepository,
              ).thenReturn(
                const Repository(id: 1, name: 'repo'),
              );
              when(
                () => mockGlobalStoreChangeNotifier.selectedUser,
              ).thenReturn(
                const User(id: 1, username: 'user', avatarUrl: 'url'),
              );

              // ACT
              await tester.pumpScreen(
                screenWidget: MultiProvider(
                  providers: [
                    ChangeNotifierProvider<GlobalStoreChangeNotifier>.value(
                      value: mockGlobalStoreChangeNotifier,
                    ),
                  ],
                  builder: (context, child) => const GitCommitHistoryScreen(),
                ),
              );

              // ASSERT
              expect(find.byType(GitCommitHistoryScreen), findsOneWidget);
            },
          );
        },
      );
    },
  );
}
