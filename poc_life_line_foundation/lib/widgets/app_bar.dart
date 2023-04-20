import 'package:flutter/material.dart';
import 'package:poc_life_line_foundation/pages/medical_camps.dart';
import 'package:poc_life_line_foundation/pages/medical_prcedures.dart';
import 'package:poc_life_line_foundation/pages/signup.dart';
import 'package:poc_life_line_foundation/pages/viewall.dart';

import '../pages/surgeries.dart';

class data {}

class AppAndTabBarWidget extends StatelessWidget {
  final int _index = 0;

  var colors = [
    Colors.red,
    Colors.blue,
    Colors.cyan,
    Colors.green,
    Colors.yellow,
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
  ];

  final achievements = [
    {'amount': 1234, 'detail': 'surgeries'},
    {'amount': 1234, 'detail': 'surgeries'},
    {'amount': 1234, 'detail': 'surgeries'},
    {'amount': 1234, 'detail': 'surgeries'},
    {'amount': 1234, 'detail': 'surgeries'},
    {'amount': 1234, 'detail': 'surgeries'},
    {'amount': 1234, 'detail': 'surgeries'},
  ];

  AppAndTabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final myRoute = [
      'page1',
      'page2',
      'page3',
      'page4',
    ];
    var space = const SizedBox(width: 10);
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'LifeLine',
            style: TextStyle(),
          ),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                child:
                    Text('CATEGORIES', style: TextStyle(color: Colors.black)),
              ),
              Tab(
                child: Text('GENERAL DONATIONS',
                    style: TextStyle(color: Colors.black)),
              ),
              Tab(
                child: Text('SUCCESS STORIES',
                    style: TextStyle(color: Colors.black)),
              ),
            ],
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.add_alert),
              tooltip: 'Show Snackbar',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('This is a snackbar')));
              },
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                    color: Colors.blue,
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://media.licdn.com/dms/image/C4D0BAQFPOSpReN1BUA/company-logo_200_200/0/1659094180792?e=2147483647&v=beta&t=z7H_4mkjXJyC37Y4mGmWaat7FGelvdK2aeeaMWf7iTk"),
                        fit: BoxFit.cover)),
                child: Text(''),
                // margin: EdgeInsets.all(10.10),
              ),
              ListTile(
                leading: const Icon(Icons.login),
                title: const Text('Login'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.category),
                title: const Text("Categories"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.help),
                title: const Text("How it Works"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.thumb_up_alt_outlined),
                title: const Text("Rate us"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.switch_access_shortcut_add_outlined),
                title: const Text("Tell Your Friends"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.currency_exchange_rounded),
                title: const Text('Change Currency'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                    margin: const EdgeInsets.only(left: 10, right: 10),
                    height: 150,
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
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const view()));
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
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
                                              const Text('detail'),
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
                                Navigator.pushNamed(
                                    context, '/${myRoute[index]}'),
                              },
                              child: Card(
                                  color: colors[index],
                                  child: Container(
                                    padding: const EdgeInsets.all(8),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(item['name']!)
                                        ]),
                                  )),
                            ));
                      }),
                )
              ],
            ),
            const Center(
              child: Text("It's rainy here"),
            ),
            const Center(
              child: Text("It's sunny here"),
            ),
          ],
        ),
      ),
    );
  }
}
