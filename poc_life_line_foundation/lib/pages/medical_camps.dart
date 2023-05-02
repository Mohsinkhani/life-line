// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:poc_life_line_foundation/pages/surgeries.dart';

import '../models/camps_model.dart';

class MedicalCamps extends StatelessWidget {
  final List<CampsModel> upComing;

  final int _index = 0;
  final allcamps = [
    {
      'upcomig': 'UpComing',
      'header': 'deserving patient in talagang need your support',
      'currency1': 'RS.1000',
      'currency2': 'Rs.1000',
      'req': 'required',
      'raised': 'Raised',
    },
    {
      'upcomig': 'UpComing',
      'header': 'deserving patient in talagang need your support',
      'currency1': 'RS.1000',
      'currency2': 'Rs.1000',
      'req': 'required',
      'raised': 'Raised',
    },
    {
      'upcomig': 'UpComing',
      'header': 'deserving patient in talagang need your support',
      'currency1': 'RS.1000',
      'currency2': 'Rs.1000',
      'req': 'required',
      'raised': 'Raised',
    },
    {
      'upcomig': 'UpComing',
      'header': 'deserving patient in talagang need your support',
      'currency1': 'RS.1000',
      'currency2': 'Rs.1000',
      'req': 'required',
      'raised': 'Raised',
    },
    {
      'upcomig': 'UpComing',
      'header': 'deserving patient in talagang need your support',
      'currency1': 'RS.1000',
      'currency2': 'Rs.1000',
      'req': 'required',
      'raised': 'Raised',
    },
  ];
  final completed = [
    {
      'completed': 'Completed',
      'header': 'deserving patient in talagang need your support',
      'currency1': 'RS.1000',
      'currency2': 'Rs.1000',
      'req': 'required',
      'raised': 'Raised',
    },
    {
      'completed': 'Completed',
      'header': 'deserving patient in talagang need your support',
      'currency1': 'RS.1000',
      'currency2': 'Rs.1000',
      'req': 'required',
      'raised': 'Raised',
    },
    {
      'completed': 'Completed',
      'header': 'deserving patient in talagang need your support',
      'currency1': 'RS.1000',
      'currency2': 'Rs.1000',
      'req': 'required',
      'raised': 'Raised',
    },
    {
      'completed': 'Completed',
      'header': 'deserving patient in talagang need your support',
      'currency1': 'RS.1000',
      'currency2': 'Rs.1000',
      'req': 'required',
      'raised': 'Raised',
    },
    {
      'completed': 'Completed',
      'header': 'deserving patient in talagang need your support',
      'currency1': 'RS.1000',
      'currency2': 'Rs.1000',
      'req': 'required',
      'raised': 'Raised',
    },
  ];
  MedicalCamps({super.key, required this.upComing});

  @override
  Widget build(BuildContext context) {
    final myRoute1 = [
      'test1',
      'test2',
      'test3',
      'test4',
    ];
    final myRoute2 = [
      'check1',
      'check2',
      'check3',
      'check4',
    ];
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
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // const TextField(
                //     decoration: InputDecoration(
                //         labelText: "Search", suffixIcon: Icon(Icons.search))),
                Expanded(
                    child: TabBarView(children: <Widget>[
                  /* Todo: Convert the following listView to ListView.Builder and create
                     10 same cards as the one on Medical Camps Screen */

                  ListView.builder(
                      itemCount: allcamps.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (BuildContext context, int index) {
                        final item = allcamps[index];
                        return SizedBox(
                            height: 160,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      onTap: () => {
                                        Navigator.pushNamed(
                                            context, '/${myRoute1[index]}')
                                      },
                                      child: Card(
                                        child: Container(
                                          height: 150,
                                          width: 180,
                                          decoration: BoxDecoration(
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    top: 10),
                                                width: 100,
                                                decoration: const BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomRight:
                                                          Radius.circular(12),
                                                      topRight:
                                                          Radius.circular(12),
                                                    ),
                                                    color: Colors.green),
                                                child: Text(
                                                  item['upcomig'].toString(),
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                              Container(
                                                margin:
                                                    EdgeInsets.only(left: 8),
                                                child: Text(
                                                  item['header'].toString(),
                                                ),
                                              ),
                                              Container(
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
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
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Column(
                                                    children: [
                                                      Text(item['currency1']
                                                          .toString()),
                                                      Text(
                                                        item['req'].toString(),
                                                        style: TextStyle(
                                                            color: Colors.grey),
                                                      ),
                                                    ],
                                                  ),
                                                  Column(
                                                    children: [
                                                      Text(item['currency2']
                                                          .toString()),
                                                      Text(
                                                        item['raised']
                                                            .toString(),
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
                                    ),
                                    InkWell(
                                      onTap: () => {
                                        Navigator.pushNamed(
                                            context, '/${myRoute2[index]}')
                                      },
                                      child: Card(
                                        child: Container(
                                          height: 150,
                                          width: 180,
                                          decoration: BoxDecoration(
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    top: 10),
                                                width: 100,
                                                decoration: const BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomRight:
                                                          Radius.circular(12),
                                                      topRight:
                                                          Radius.circular(12),
                                                    ),
                                                    color: Colors.green),
                                                child: Text(
                                                  item['upcomig'].toString(),
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                              Container(
                                                margin:
                                                    EdgeInsets.only(left: 8),
                                                child: Text(
                                                  item['header'].toString(),
                                                ),
                                              ),
                                              Container(
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
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
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Column(
                                                    children: [
                                                      Text(item['currency1']
                                                          .toString()),
                                                      Text(
                                                        item['req'].toString(),
                                                        style: TextStyle(
                                                            color: Colors.grey),
                                                      ),
                                                    ],
                                                  ),
                                                  Column(
                                                    children: [
                                                      Text(item['currency2']
                                                          .toString()),
                                                      Text(
                                                        item['raised']
                                                            .toString(),
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
                                    ),
                                  ],
                                ),
                              ],
                            ));
                      }),

                  /* DO the same process as for the upcomming */

                  ListView.builder(
                      itemCount: completed.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (BuildContext context, int index) {
                        final item = completed[index];
                        return SizedBox(
                            height: 160,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      onTap: () => {
                                        Navigator.pushNamed(
                                            context, '/${myRoute1[index]}')
                                      },
                                      child: Card(
                                        child: Container(
                                          height: 150,
                                          width: 180,
                                          decoration: BoxDecoration(
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    top: 10),
                                                width: 100,
                                                decoration: const BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomRight:
                                                          Radius.circular(12),
                                                      topRight:
                                                          Radius.circular(12),
                                                    ),
                                                    color: Colors.green),
                                                child: Text(
                                                  item['completed'].toString(),
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                              Container(
                                                margin:
                                                    EdgeInsets.only(left: 8),
                                                child: Text(
                                                  item['header'].toString(),
                                                ),
                                              ),
                                              Container(
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
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
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Column(
                                                    children: [
                                                      Text(item['currency1']
                                                          .toString()),
                                                      Text(
                                                        item['req'].toString(),
                                                        style: TextStyle(
                                                            color: Colors.grey),
                                                      ),
                                                    ],
                                                  ),
                                                  Column(
                                                    children: [
                                                      Text(item['currency2']
                                                          .toString()),
                                                      Text(
                                                        item['raised']
                                                            .toString(),
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
                                    ),
                                    InkWell(
                                      onTap: () => {
                                        Navigator.pushNamed(
                                            context, '/${myRoute2[index]}')
                                      },
                                      child: Card(
                                        child: Container(
                                          height: 150,
                                          width: 180,
                                          decoration: BoxDecoration(
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    top: 10),
                                                width: 100,
                                                decoration: const BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomRight:
                                                          Radius.circular(12),
                                                      topRight:
                                                          Radius.circular(12),
                                                    ),
                                                    color: Colors.green),
                                                child: Text(
                                                  item['completed'].toString(),
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                              Container(
                                                margin:
                                                    EdgeInsets.only(left: 8),
                                                child: Text(
                                                  item['header'].toString(),
                                                ),
                                              ),
                                              Container(
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
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
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Column(
                                                    children: [
                                                      Text(item['currency1']
                                                          .toString()),
                                                      Text(
                                                        item['req'].toString(),
                                                        style: TextStyle(
                                                            color: Colors.grey),
                                                      ),
                                                    ],
                                                  ),
                                                  Column(
                                                    children: [
                                                      Text(item['currency2']
                                                          .toString()),
                                                      Text(
                                                        item['raised']
                                                            .toString(),
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
                                    ),
                                  ],
                                ),
                              ],
                            ));
                      }),
                ]))

                // ````Container(
                //   height: 100,
                //   // child: InkWell pudh (),
                // )
              ],
            ),
          )),
    );
  }
}
