import 'package:flutter/material.dart';

//import 'package:percent_indicator/linear_percent_indicator.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Downloading...',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: MyHomePage( 'Downloading...'),
    );
  }
}

class Bar extends StatefulWidget {
  const Bar({super.key});

  // MyHomePage({Key key, this.title}) : super(key: key);

  //final String title;

  @override
  _Bar createState() => _Bar();
}

class _Bar extends State<Bar> {
  var name = LinearProgressIndicator();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

          // title: Text(widget.title),
          ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(35.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              name,
              Padding(padding: EdgeInsets.all(30)),
              Text(
                "Downloading file...",
                style: new TextStyle(fontSize: 30),
              ),
              Padding(padding: EdgeInsets.all(10)),
              name,
            ],
          ),
        ),
      ),
    );
  }
}
