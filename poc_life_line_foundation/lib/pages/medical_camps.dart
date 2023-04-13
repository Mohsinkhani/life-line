// // ignore_for_file: import_of_legacy_library_into_null_safe

// import 'package:flutter/material.dart';
// import 'package:flappy_search_bar/flappy_search_bar.dart';
// import 'package:poc_life_line_foundation/pages/surgeries.dart';

// class MedicalCamps extends StatelessWidget {
//   final int _index = 0;
//   const MedicalCamps({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//         initialIndex: 0,
//         length: 2,
//         child: Scaffold(
//             appBar: AppBar(
//               title: Text("Medical Camps"),
//               bottom: const TabBar(
//                 tabs: <Widget>[
//                   Tab(
//                     child:
//                         Text('Upcoming', style: TextStyle(color: Colors.black)),
//                   ),
//                   Tab(
//                     child:
//                         Text('Complete', style: TextStyle(color: Colors.black)),
//                   ),
//                 ],
//               ),
//             ),
//             body: Column(
//               children: [
//                 Container(
//                   width: MediaQuery.of(context).size.width,
//                   height: 50,
//                   color: Colors.amber[50],
//                   child: SafeArea(
//                     child: SearchBar<Post>(
//                       minimumChars: 1,
//                       searchBarPadding: EdgeInsets.symmetric(horizontal: 10),
//                       headerPadding: EdgeInsets.symmetric(horizontal: 10),
//                       listPadding: EdgeInsets.symmetric(horizontal: 10),
//                       // onSearch: _getALlPosts,
//                       //searchBarController: _searchBarController,
//                       placeHolder: Center(
//                           child: Text(
//                         "PlaceHolder",
//                         style: TextStyle(fontSize: 30),
//                       )),
//                       cancellationWidget: Text("Cancel"),
//                       emptyWidget: Text("empty"),
//                       onCancelled: () {
//                         print("Cancelled triggered");
//                       },
//                       mainAxisSpacing: 10,
//                       onItemFound: (Post post, int index) {
//                         return Container(
//                           color: Colors.lightBlue,
//                           child: ListTile(
//                             // title: Text(post.title),
//                             isThreeLine: true,
//                             //subtitle: Text(post.body),
//                             onTap: () {
//                               Navigator.of(context).push(MaterialPageRoute(
//                                   builder: (context) => SurgeriesPage()));
//                             },
//                           ),
//                         );
//                       },
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                     child: TabBarView(children: <Widget>[
//                   ListView(
//                     children: <Widget>[
//                       Column(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Row(
//                             children: [
//                               Card(
//                                 child: Container(
//                                   height: 150,
//                                   width: 180,
//                                   color: Colors.amber,
//                                 ),
//                               ),
//                               SizedBox(
//                                 width: 10,
//                               ),
//                               Card(
//                                 child: Container(
//                                   height: 150,
//                                   width: 180,
//                                   color: Colors.deepOrange,
//                                 ),
//                               ),
//                             ],
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Row(
//                             children: [
//                               Card(
//                                 child: Container(
//                                   height: 150,
//                                   width: 180,
//                                   color: Colors.grey,
//                                 ),
//                               ),
//                               SizedBox(
//                                 width: 10,
//                               ),
//                               Card(
//                                 child: Container(
//                                   height: 150,
//                                   width: 180,
//                                   color: Colors.grey,
//                                 ),
//                               ),
//                             ],
//                           )
//                         ],
//                       )
//                     ],
//                   ),
//                   ListView(
//                     children: <Widget>[
//                       Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Row(
//                             children: [
//                               Card(
//                                 child: Container(
//                                   height: 150,
//                                   width: 180,
//                                   color: Colors.amber,
//                                 ),
//                               ),
//                               SizedBox(
//                                 width: 10,
//                               ),
//                               Card(
//                                 child: Container(
//                                   height: 150,
//                                   width: 180,
//                                   color: Colors.deepOrange,
//                                 ),
//                               ),
//                             ],
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Row(
//                             children: [
//                               Card(
//                                 child: Container(
//                                   height: 150,
//                                   width: 180,
//                                   color: Colors.grey,
//                                 ),
//                               ),
//                               SizedBox(
//                                 width: 10,
//                               ),
//                               Card(
//                                 child: Container(
//                                   height: 150,
//                                   width: 180,
//                                   color: Colors.grey,
//                                 ),
//                               ),
//                             ],
//                           )
//                         ],
//                       )
//                     ],
//                   ),
//                 ]))
//               ],
//             )

//             // Container(
//             //   height: 100,
//             //   // child: InkWell pudh (),
//             // )
//             ));
//   }
// }

// class Post {}
