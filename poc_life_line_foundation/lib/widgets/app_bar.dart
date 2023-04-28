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
    Colors.cyan,
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
      'page5',
      'page6',
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
            Center(
                child: Stack(
              children: [
                Container(
                  height: double.infinity,
                  width: MediaQuery.of(context).size.width,
                  child: Image.network(
                    "https://cdn.pixabay.com/photo/2022/12/24/18/49/outdoor-7676323__480.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 180.0,
                  child: Container(
                    height: 440.0,
                    width: 400.0,
                    padding: EdgeInsets.all(15.0),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "General donation",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.purple),
                                  textAlign: TextAlign.start,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  'people who lack privilege believe that they are not entitied to better healthcare.Lets break the cycle the poverty and prove that being poor does not deprive anyone of basic human rights.Help us so we can provide better quality of life to the patients and their families!',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 18),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 1,
                                  width: 380,
                                  color: Colors.grey,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 20,
                                  width: MediaQuery.of(context).size.width,
                                  child: const Text(
                                    "Enter Your Amount",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Container(
                                  height: 80,
                                  width: MediaQuery.of(context).size.width,
                                  child: const Text(
                                    "Rs 0",
                                    style: TextStyle(
                                        fontSize: 40,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Column(
                                  children: [
                                    Container(
                                      height: 35,
                                      width: MediaQuery.of(context).size.width,
                                      child: ElevatedButton(
                                          onPressed: () {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        AppAndTabBarWidget()));
                                          },
                                          child: const Text(
                                            "Donate Now",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          )),
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
                )
              ],
            )),
            const Center(
              child: Text("It's sunny here"),
            ),
          ],
        ),
      ),
    );
  }
}
