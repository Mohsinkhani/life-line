import 'package:flutter/material.dart';
import 'package:poc_life_line_foundation/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          toolbarTextStyle: const TextTheme(
            titleMedium: TextStyle(color: Colors.black),
          ).bodyMedium,
          titleTextStyle: const TextTheme(
            titleMedium: TextStyle(color: Colors.black),
          ).titleLarge,
        ),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
