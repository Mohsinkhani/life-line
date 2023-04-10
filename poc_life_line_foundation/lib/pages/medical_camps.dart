import 'package:flutter/material.dart';

class MedicalCamps extends StatelessWidget {
  final int _index = 0;
  const MedicalCamps({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 0,
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              title: Text("Medical Camps"),
              bottom: const TabBar(
                tabs: <Widget>[
                  Tab(
                    child:
                        Text('Upcoming', style: TextStyle(color: Colors.black)),
                  ),
                  Tab(
                    child:
                        Text('Complete', style: TextStyle(color: Colors.black)),
                  ),
                ],
              ),
            ),
            body: Container(
              height: 100,
              // child: InkWell pudh (),
            )));
  }
}
