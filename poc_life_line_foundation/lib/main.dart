import 'package:flutter/material.dart';
import 'package:poc_life_line_foundation/pages/home.dart';
import 'package:poc_life_line_foundation/pages/medical_camps.dart';
import 'package:poc_life_line_foundation/pages/surgeries.dart';

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
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/surgeries': (context) => const SurgeriesPage(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/camps': (context) => const MedicalCamps(),
      },
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
