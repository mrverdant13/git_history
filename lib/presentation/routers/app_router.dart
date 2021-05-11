import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';

import '../screens/selection/screen.dart';

@CustomAutoRouter(
  routes: [
    CustomRoute(
      page: SelectionScreen,
      initial: true,
    ),
  ],
)
class $AppRouter {}
