import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';

import '../screens/git_commits_history/screen.dart';
import '../screens/selection/screen.dart';

@CustomAutoRouter(
  routes: [
    CustomRoute(
      page: SelectionScreen,
      initial: true,
    ),
    CustomRoute(
      page: GitCommitHistoryScreen,
    ),
  ],
)
class $AppRouter {}
