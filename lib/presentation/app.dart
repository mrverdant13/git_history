import 'package:flutter/material.dart';

import '../core/flavors.dart';
import 'screens/home/screen.dart';

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App Template (${kAppFlavor.tag})',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
