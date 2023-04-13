// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Camps extends StatefulWidget {
  Camps({
    Key? key,
  }) : super(key: key);

  @override
  _CampsState createState() => _CampsState();
}

class _CampsState extends State<Camps> {
  List fooList = ['one', 'two', 'three', 'four', 'five'];

  List filteredList = [];
  @override
  void initState() {
    super.initState();
    filteredList = fooList;
  }

  void filter(String inputString) {
    filteredList =
        fooList.where((i) => i.toLowerCase().contains(inputString)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            decoration: const InputDecoration(
              hintText: 'Search ',
              hintStyle: TextStyle(
                fontSize: 14,
              ),
            ),
            onChanged: (text) {
              text = text.toLowerCase();
              filter(text);
            },
          ),
          Expanded(
              child: ListView(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Card(
                        child: Container(
                          height: 150,
                          width: 180,
                          child: Text("one"),
                          color: Colors.deepOrange,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Card(
                        child: Container(
                          height: 150,
                          width: 180,
                          child: Text("one"),
                          color: Colors.deepOrange,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Card(
                        child: Container(
                          height: 150,
                          width: 180,
                          child: Text("Three"),
                        ),
                      ),
                      Card(
                        child: Container(
                            height: 150,
                            width: 180,
                            color: Colors.amber,
                            child: Container(
                              margin: EdgeInsets.all(50),
                              alignment: Alignment.topLeft,
                              height: 10,
                              width: 30,
                              child: Text("Four",
                                  style: TextStyle(color: Colors.amber)),
                              color: Colors.blue,
                            )),
                      ),
                    ],
                  )
                ],
              )
            ],
          ))
          // Expanded(
          //   child: ListView.builder(
          //     itemCount: filteredList.length,
          //     itemBuilder: (BuildContext context, int index) => ListTile(
          //       title: Text(filteredList[index]),
          //       onTap: () {
          //         Navigator.push(
          //           context,
          //           MaterialPageRoute(
          //             builder: (context) => Display(
          //               text: filteredList[index],
          //             ),
          //           ),
          //         );
          //       },
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}

class Display extends StatelessWidget {
  final String text;

  const Display({Key? key, required this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(text),
      ),
    );
  }
}
