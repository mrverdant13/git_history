import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';

import '../screens/home/screen.dart';

@CustomAutoRouter(
  routes: [
    CustomRoute(
      page: HomeScreen,
      initial: true,
    ),
  ],
)
class $AppRouter {}
