import 'package:flutter/material.dart';

class MedicalProcedures extends StatelessWidget {
  final int _index = 0;
  const MedicalProcedures({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 0,
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              title: Text("Medical Procedures"),
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
