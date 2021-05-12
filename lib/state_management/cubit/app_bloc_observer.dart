import 'dart:developer';

import 'package:bloc/bloc.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);

    final changeStrBuffer = StringBuffer()
      ..writeln('State changed')
      ..writeln('Bloc: ${bloc.runtimeType}')
      ..writeln('Previous: ${change.currentState}')
      ..writeln('New: ${change.nextState}');

    log(
      changeStrBuffer.toString(),
      name: 'Bloc',
    );
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    final errorStrBuffer = StringBuffer()
      ..writeln('Error detected')
      ..writeln('Bloc: ${bloc.runtimeType}')
      ..writeln('Error: $error');

    log(
      errorStrBuffer.toString(),
      error: error,
      stackTrace: stackTrace,
      name: 'Bloc',
    );

    super.onError(bloc, error, stackTrace);
  }
}
