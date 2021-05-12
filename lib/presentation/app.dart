import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../core/flavors.dart';
import '../state_management/change_notifier/global_store/global_store_change_notifier.dart';
import 'routers/app_router.gr.dart';

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => GlobalStoreChangeNotifier(),
        ),
        ListenableProvider<AppRouter>(
          create: (context) => AppRouter(),
        ),
      ],
      builder: (context, _) => MaterialApp.router(
        title: 'Flutter App Template (${kAppFlavor.tag})',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routerDelegate: context.read<AppRouter>().delegate(),
        routeInformationParser: context.read<AppRouter>().defaultRouteParser(),
      ),
    );
  }
}
