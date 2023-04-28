import 'package:flutter/material.dart';
import 'package:poc_life_line_foundation/pages/Sadaqah.dart';
import 'package:poc_life_line_foundation/pages/Zakat.dart';
import 'package:poc_life_line_foundation/pages/home.dart';
import 'package:poc_life_line_foundation/pages/mcamp1.dart';
import 'package:poc_life_line_foundation/pages/mcamp2.dart';
import 'package:poc_life_line_foundation/pages/mcamp3.dart';
import 'package:poc_life_line_foundation/pages/mcamp4.dart';
import 'package:poc_life_line_foundation/pages/medical_camps.dart';
import 'package:poc_life_line_foundation/pages/medical_prcedures.dart';
import 'package:poc_life_line_foundation/pages/Expenses.dart';
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
        '/page2': (context) => MedicalCamps(
              upComing: [],
            ),
        '/page3': (context) => MedicalProcedures(),
        '/page4': (context) => AdminExpenses(),
        '/page5': (context) => DonateZakat(),
        '/page6': (context) => PaySadaqah(),

        '/test1': (context) => upcoming1(),
        '/test2': (context) => upcoming2(),
        '/test3': (context) => upcoming3(),
        '/test4': (context) => upcoming4(),
        '/check1': (context) => upcoming1(),
        '/check2': (context) => upcoming2(),
        '/check3': (context) => upcoming1(),
        '/check4': (context) => upcoming1(),
      },
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
