import 'package:flutter/material.dart';

// ignore: camel_case_types
class view extends StatelessWidget {
  const view({super.key});
  @override
  Widget build(BuildContext context) {
    var space = const SizedBox();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Achievment"),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Row(
            children: [
              Container(
                child: const Text(
                  "1234",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                height: 120,
                width: 170,
                color: Colors.amber,
              ),
              const SizedBox(width: 20),
              Container(
                width: 170,
                height: 120,
                color: Colors.purple[200],
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                width: 170,
                height: 120,
                color: Colors.green[400],
              ),
              const SizedBox(
                width: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: const Text(
                      "data",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.yellow,
                          fontSize: 25),
                    ),
                    height: 120,
                    width: 170,
                    color: const Color.fromARGB(255, 82, 12, 157),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
          Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                Text(
                  '2,321',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
                Text('Surgeries & Medical'),
                Text('Procedure'),
                Text('Performed')
              ]),

          // Container(
          //   height: 200,
          //   width: 160.0,
          //   color: Colors.blue,
          // ),
          // Container(
          //   height: 200,
          //   width: 160.0,
          //   color: Colors.green,
          // ),
          // Container(
          //   height: 120,
          //   width: 160.0,
          //   color: Colors.yellow,
          // ),
          // Container(
          //   height: 120,
          //   width: 160.0,
          //   color: Colors.orange,
          // ),
        ],
      ),
    );
  }
}
