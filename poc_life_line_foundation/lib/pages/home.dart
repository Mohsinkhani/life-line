import 'package:flutter/material.dart';
import 'package:poc_life_line_foundation/widgets/app_bar.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: AppAndTabBarWidget(),
      ),
    );
  }
}
