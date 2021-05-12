// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../screens/git_commits_history/screen.dart' as _i4;
import '../screens/selection/screen.dart' as _i3;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SelectionScreenRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.SelectionScreen();
        },
        opaque: true,
        barrierDismissible: false),
    GitCommitHistoryScreenRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i4.GitCommitHistoryScreen();
        },
        opaque: true,
        barrierDismissible: false)
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SelectionScreenRoute.name, path: '/'),
        _i1.RouteConfig(GitCommitHistoryScreenRoute.name,
            path: '/git-commit-history-screen')
      ];
}

class SelectionScreenRoute extends _i1.PageRouteInfo {
  const SelectionScreenRoute() : super(name, path: '/');

  static const String name = 'SelectionScreenRoute';
}

class GitCommitHistoryScreenRoute extends _i1.PageRouteInfo {
  const GitCommitHistoryScreenRoute()
      : super(name, path: '/git-commit-history-screen');

  static const String name = 'GitCommitHistoryScreenRoute';
}
