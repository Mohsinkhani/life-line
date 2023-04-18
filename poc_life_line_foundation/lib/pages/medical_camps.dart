// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:poc_life_line_foundation/pages/surgeries.dart';

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
            color: Colors.grey[300],
            child: Column(
              children: [
                Expanded(
                    child: TabBarView(children: <Widget>[
                  /* Todo: Convert the following listView to ListView.Builder and create
                     10 same cards as the one on Medical Camps Screen */

                  ListView(
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Card(
                                child: Container(
                                  height: 150,
                                  width: 180,
                                  decoration: BoxDecoration(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(top: 10),
                                        width: 100,
                                        decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              bottomRight: Radius.circular(12),
                                              topRight: Radius.circular(12),
                                            ),
                                            color: Colors.green),
                                        child: const Text(
                                          'Upcoming',
                                          style: TextStyle(color: Colors.white),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 8),
                                        child: const Text(
                                            'Deserving Patients in Talangang Nedd your Support'),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 5,
                                        color: Colors.grey,
                                        child: Container(
                                          width: 1,
                                          height: 5,
                                          color: Colors.green,
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Column(
                                            children: const [
                                              Text('Rs. 10000'),
                                              Text(
                                                'Required',
                                                style: TextStyle(
                                                    color: Colors.grey),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            children: const [
                                              Text('Rs. 10000'),
                                              Text(
                                                'Raised',
                                                style: TextStyle(
                                                    color: Colors.grey),
                                              ),
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Card(
                                child: Container(
                                  height: 150,
                                  width: 180,
                                  decoration: BoxDecoration(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(top: 10),
                                        width: 100,
                                        decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              bottomRight: Radius.circular(12),
                                              topRight: Radius.circular(12),
                                            ),
                                            color: Colors.green),
                                        child: const Text(
                                          'Upcoming',
                                          style: TextStyle(color: Colors.white),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 8),
                                        child: const Text(
                                            'Deserving Patients in Talangang Nedd your Support'),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 5,
                                        color: Colors.grey,
                                        child: Container(
                                          width: 1,
                                          height: 5,
                                          color: Colors.green,
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Column(
                                            children: const [
                                              Text('Rs. 10000'),
                                              Text(
                                                'Required',
                                                style: TextStyle(
                                                    color: Colors.grey),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            children: const [
                                              Text('Rs. 10000'),
                                              Text(
                                                'Raised',
                                                style: TextStyle(
                                                    color: Colors.grey),
                                              ),
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Card(
                                child: Container(
                                  height: 150,
                                  width: 180,
                                  decoration: BoxDecoration(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(top: 10),
                                        width: 100,
                                        decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              bottomRight: Radius.circular(12),
                                              topRight: Radius.circular(12),
                                            ),
                                            color: Colors.green),
                                        child: const Text(
                                          'Upcoming',
                                          style: TextStyle(color: Colors.white),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 8),
                                        child: const Text(
                                            'Deserving Patients in Talangang Nedd your Support'),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 5,
                                        color: Colors.grey,
                                        child: Container(
                                          width: 1,
                                          height: 5,
                                          color: Colors.green,
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Column(
                                            children: const [
                                              Text('Rs. 10000'),
                                              Text(
                                                'Required',
                                                style: TextStyle(
                                                    color: Colors.grey),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            children: const [
                                              Text('Rs. 10000'),
                                              Text(
                                                'Raised',
                                                style: TextStyle(
                                                    color: Colors.grey),
                                              ),
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Card(
                                child: Container(
                                  height: 150,
                                  width: 180,
                                  decoration: BoxDecoration(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(top: 10),
                                        width: 100,
                                        decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              bottomRight: Radius.circular(12),
                                              topRight: Radius.circular(12),
                                            ),
                                            color: Colors.green),
                                        child: const Text(
                                          'Upcoming',
                                          style: TextStyle(color: Colors.white),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 8),
                                        child: const Text(
                                            'Deserving Patients in Talangang Nedd your Support'),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 5,
                                        color: Colors.grey,
                                        child: Container(
                                          width: 1,
                                          height: 5,
                                          color: Colors.green,
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Column(
                                            children: const [
                                              Text('Rs. 10000'),
                                              Text(
                                                'Required',
                                                style: TextStyle(
                                                    color: Colors.grey),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            children: const [
                                              Text('Rs. 10000'),
                                              Text(
                                                'Raised',
                                                style: TextStyle(
                                                    color: Colors.grey),
                                              ),
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),

                  /* DO the same process as for the upcomming */

                  ListView(
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Card(
                                child: Container(
                                  height: 150,
                                  width: 180,
                                  color: Colors.amber,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Card(
                                child: Container(
                                  height: 150,
                                  width: 180,
                                  color: Colors.deepOrange,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Card(
                                child: Container(
                                  height: 150,
                                  width: 180,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Card(
                                child: Container(
                                  height: 150,
                                  width: 180,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ]))

                // Container(
                //   height: 100,
                //   // child: InkWell pudh (),
                // )
              ],
            ),
          )),
    );
  }
}
