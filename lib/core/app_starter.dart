import 'dart:async';
import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../presentation/app.dart';
import '../state_management/cubit/app_bloc_observer.dart';
import 'dependency_injection.dart';
import 'flavors.dart';

Future<void> startApp(Flavor flavor) async {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      await injectDependencies(flavor);

      Bloc.observer = AppBlocObserver();

      FlutterError.onError = (details) {
        log(
          details.exceptionAsString(),
          stackTrace: details.stack,
        );
      };

      runApp(
        flavor == Flavor.prod
            ? const MyApp()
            : Directionality(
                textDirection: TextDirection.ltr,
                child: Banner(
                  message: flavor.tag,
                  location: BannerLocation.topStart,
                  child: const MyApp(),
                ),
              ),
      );
    },
    (error, stackTrace) => log(
      error.toString(),
      stackTrace: stackTrace,
    ),
  );
}
