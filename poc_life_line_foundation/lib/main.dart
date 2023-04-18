import 'package:flutter/material.dart';
import 'package:poc_life_line_foundation/pages/home.dart';
import 'package:poc_life_line_foundation/pages/medical_camps.dart';
import 'package:poc_life_line_foundation/pages/medical_prcedures.dart';
import 'package:poc_life_line_foundation/pages/progressbar.dart';
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
        // '/': (context) => MyHomePage(
        //       title: 'testi',
        //     ),
        '/page1': (context) => SurgeriesPage(),
        '/page2': (context) => MedicalCamps(),
        '/page3': (context) => MedicalProcedures(),
        '/page4': (context) => Camps(),
      },
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
