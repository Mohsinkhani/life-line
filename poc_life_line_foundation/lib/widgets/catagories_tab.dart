import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../pages/viewall.dart';

class CatagoriesTab extends StatelessWidget {
  CatagoriesTab({super.key});

  var colors = [
    Colors.red,
    Colors.blue,
    Colors.cyan,
    Colors.green,
    Color.fromARGB(255, 213, 202, 136),
    Colors.cyan,
  ];

  final achievements = [
    {'amount': 2325, 'detail': 'surgeries & medical performed'},
    {'amount': 219, 'detail': 'Medical Camps organized'},
    {'amount': 177207, 'detail': 'Medicals Camps Patient treated'},
    {'amount': 617.4, 'detail': 'funds Spent'},
    {'amount': 4439, 'detail': 'Supporting Donors'},
    // {'amount': 1234, 'detail': 'surgeries'},
    // {'amount': 1234, 'detail': 'surgeries'},
  ];
  final allCases = [
    {
      'name': 'Surgeries',
    },
    {
      'name': 'Medical Camps',
    },
    {
      'name': 'Medical Procedures',
    },
    {
      'name': 'Expenses',
    },
    {
      'name': 'Zakat',
    },
    {
      'name': 'Pay Sadaqah',
    },
  ];
  @override
  Widget build(BuildContext context) {
    final myRoute = [
      'page1',
      'page2',
      'page3',
      'page4',
      'page5',
      'page6',
    ];
    return Container(
      color: Colors.grey[300],
      child: Column(
        children: <Widget>[
          Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              height: 155,
              child: Column(
                children: <Widget>[
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        const Text(
                          'Achievement',
                          style: TextStyle(fontSize: 25),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const view()));
                            },
                            child: const Text('View All'))
                      ]),
                  Expanded(
                    child: ListView.builder(
                        itemCount: achievements.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          final item = achievements[index];
                          return SizedBox(
                            height: 50,
                            width: 120,
                            child: Card(
                                elevation: 3,
                                child: Container(
                                  padding: const EdgeInsets.all(8),
                                  child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          item['amount'].toString(),
                                          style: const TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.green,
                                          ),
                                        ),
                                        Text(
                                          item['detail'].toString(),
                                          style: const TextStyle(
                                              // fontSize: 20,
                                              // fontWeight: FontWeight.bold,
                                              // color: Colors.green,
                                              ),
                                        ),
                                      ]),
                                )),
                          );
                        }),
                  )
                ],
              )),
          Expanded(
            child: ListView.builder(
                itemCount: allCases.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) {
                  final item = allCases[index];
                  return SizedBox(
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      child: InkWell(
                        onTap: () => {
                          Navigator.pushNamed(context, '/${myRoute[index]}'),
                        },
                        child: Card(
                            color: colors[index],
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[Text(item['name']!)]),
                            )),
                      ));
                }),
          )
        ],
      ),
    );
  }
}
