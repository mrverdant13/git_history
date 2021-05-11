import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

extension PumpScreen on WidgetTester {
  Future<void> pumpScreen({
    required Widget screenWidget,
  }) =>
      pumpWidget(
        MaterialApp(
          home: screenWidget,
        ),
      );
}
