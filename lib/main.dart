import 'package:flutter/material.dart';
import 'package:trip_manager/features/auth/auth.dart';

import 'core/theme/theme.dart';
import 'core/theme/theme_notifier.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final ThemeNotifier _themeNotifier = ThemeNotifier();

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _themeNotifier,
      builder: (context, _) {
        return MaterialApp(
          title: 'Trip Manager',
          theme: lightTheme,
          darkTheme: darkTheme,
          themeMode: _themeNotifier.isDarkMode ? ThemeMode.dark : ThemeMode.light,
          home: Auth(themeNotifier: _themeNotifier,),
        );
      }
    );
  }
}

