import 'package:flutter_app_template/presentation/screens/git_commits_history/screen.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../helpers/pump_screen.dart';

void main() {
  group(
    '''

GIVEN a gir commits history screen''',
    () {
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

              // ACT
              await tester.pumpScreen(
                screenWidget: const GitCommitHistoryScreen(),
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
