import 'package:flutter/material.dart';
import 'package:poc_life_line_foundation/pages/viewall.dart';

import '../pages/surgeries.dart';

class AppAndTabBarWidget extends StatelessWidget {
  int _index = 0;
  var colors = [
    Colors.red,
    Colors.blue,
    Colors.cyan,
    Colors.green,
    Colors.yellow,
  ];

  final allCases = [
    {'name': 'Surgeries', 'color': 'red'},
    {'name': 'Medical Camps', 'color': 'red'},
    {'name': 'Medical Procedures', 'color': 'red'},
    {'name': 'Expenses', 'color': 'red'},
    {'name': 'Zakat', 'color': 'red'},
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

  @override
  Widget build(BuildContext context) {
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
                ),
                child: Text('Drawer Header'),
                // margin: EdgeInsets.all(10.10),
              ),
              ListTile(
                leading: Icon(Icons.login),
                title: const Text('Login'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.category),
                title: const Text("Categories"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.help),
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
                leading: Icon(Icons.switch_access_shortcut_add_outlined),
                title: const Text("Tell Your Friends"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.currency_exchange_rounded),
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
                                            builder: (context) => view()));
                                  },
                                  child: const Text('View All'))
                            ]),
                        Expanded(
                          child: ListView.builder(
                              itemCount: achievements.length,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext context, int index) {
                                final item = achievements[index];
                                return Container(
                                  height: 50,
                                  width: 120,
                                  child: Card(
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
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.green,
                                            ),
                                          ),
                                          Text('detail'),
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
                        return Container(
                            height: 150,
                            width: MediaQuery.of(context).size.width,
                            child: InkWell(
                              onTap: () => {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SurgeriesPage()),
                                )
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
                // child: ListView(
                //   scrollDirection: Axis.vertical,
                //   children: <Widget>[
                //     SizedBox(
                //         width: MediaQuery.of(context).size.width,
                //         height: 150,
                //         child: InkWell(
                //           onTap: () => {
                //             Navigator.push(
                //               context,
                //               MaterialPageRoute(
                //                   builder: (context) =>
                //                       const SurgeriesPage()),
                //             )
                //           },
                //           child: Card(
                //               color: Colors.teal,
                //               child: Container(
                //                 padding: const EdgeInsets.all(8),
                //                 child: Column(
                //                     mainAxisAlignment:
                //                         MainAxisAlignment.start,
                //                     crossAxisAlignment:
                //                         CrossAxisAlignment.start,
                //                     children: const <Widget>[
                //                       Text('Surgeries')
                //                     ]),
                //               )),
                //         )),
                //     // width: 160.0,
                //     // color: Colors.red,
                //     space,
                //     SizedBox(
                //         width: MediaQuery.of(context).size.width,
                //         height: 150,
                //         child: InkWell(
                //           onTap: () => {
                //             Navigator.push(
                //               context,
                //               MaterialPageRoute(
                //                   builder: (context) =>
                //                       const StackUnderstanding()),
                //             )
                //           },
                //           child: Card(
                //             color: Colors.amber[200],
                //             child: Column(
                //                 mainAxisAlignment: MainAxisAlignment.start,
                //                 crossAxisAlignment: CrossAxisAlignment.start,
                //                 children: const <Widget>[
                //                   Text(
                //                     'Medical Camps',
                //                     style: (TextStyle(
                //                         fontWeight: FontWeight.bold,
                //                         fontSize: 20)),
                //                   ),
                //                 ]),
                //           ),
                //         )),

                //     space,
                //     SizedBox(
                //         width: MediaQuery.of(context).size.width,
                //         height: 150,
                //         child: InkWell(
                //           onTap: () => {
                //             Navigator.push(
                //               context,
                //               MaterialPageRoute(
                //                   builder: (context) =>
                //                       const StackUnderstanding()),
                //             )
                //           },
                //           child: Card(
                //             color: Colors.purple[200],
                //             child: Column(
                //                 mainAxisAlignment: MainAxisAlignment.start,
                //                 crossAxisAlignment: CrossAxisAlignment.start,
                //                 children: const <Widget>[
                //                   Text(
                //                     'Medical Procedure',
                //                     style: (TextStyle(
                //                         fontWeight: FontWeight.bold,
                //                         fontSize: 20)),
                //                   ),
                //                 ]),
                //           ),
                //         )),

                //     space,
                //     SizedBox(
                //       width: MediaQuery.of(context).size.width,
                //       height: 150,
                //       child: InkWell(
                //         onTap: () => {
                //           Navigator.push(context,
                //               MaterialPageRoute(builder: (context) => Bar()))
                //         },
                //         child: Card(
                //           color: Colors.grey,
                //           child: Column(
                //             mainAxisAlignment: MainAxisAlignment.start,
                //             crossAxisAlignment: CrossAxisAlignment.start,
                //             children: const <Widget>[
                //                Text(
                //                 "Admin Expenses",
                //                 style: TextStyle(
                //                     fontWeight: FontWeight.bold,
                //                     fontSize: 20),
                //               )
                //             ],
                //           ),
                //         ),
                //       ),
                //     )
                //   ],
                // ),
              ],
            ),
            Center(
              child: Text("It's rainy here"),
            ),
            Center(
              child: Text("It's sunny here"),
            ),
          ],
        ),
      ),
    );
  }
}
