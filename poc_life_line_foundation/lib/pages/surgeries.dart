import 'package:flutter/material.dart';
import 'package:poc_life_line_foundation/pages/medical_camps.dart';
import 'package:poc_life_line_foundation/pages/medical_prcedures.dart';
import 'package:poc_life_line_foundation/pages/signup.dart';

class SurgeriesPage extends StatelessWidget {
  SurgeriesPage({
    super.key,
  });

  final achievements = [
    {
      'image':
          "https://cdn.pixabay.com/photo/2022/12/24/18/49/outdoor-7676323__480.jpg",
      'header': 'Support cat cochlear implant surgery',
      'currency1': 'Rs.21234',
      'currency2': 'Rs.0',
      'currency3': 'Rs.0',
      'req': 'Required',
      'raised': 'Raised',
      'support': 'supporters'
    },
    {
      'image':
          "https://cdn.pixabay.com/photo/2022/12/24/18/49/outdoor-7676323__480.jpg",
      'header': 'Support cat cochlear implant surgery',
      'currency1': 'Rs.21234',
      'currency2': 'Rs.0',
      'currency3': 'Rs.0',
      'req': 'Required',
      'raised': 'Raised',
      'support': 'supporters'
    },
    {
      'image':
          "https://cdn.pixabay.com/photo/2022/12/24/18/49/outdoor-7676323__480.jpg",
      'header': 'Support cat cochlear implant surgery',
      'currency1': 'Rs.21234',
      'currency2': 'Rs.0',
      'currency3': 'Rs.0',
      'req': 'Required',
      'raised': 'Raised',
      'support': 'supporters'
    },
    {
      'image':
          "https://cdn.pixabay.com/photo/2022/12/24/18/49/outdoor-7676323__480.jpg",
      'header': 'Support cat cochlear implant surgery',
      'currency1': 'Rs.21234',
      'currency2': 'Rs.0',
      'currency3': 'Rs.0',
      'req': 'Required',
      'raised': 'Raised',
      'support': 'supporters'
    },
    {
      'image':
          "https://cdn.pixabay.com/photo/2022/12/24/18/49/outdoor-7676323__480.jpg",
      'header': 'Support cat cochlear implant surgery',
      'currency1': 'Rs.21234',
      'currency2': 'Rs.0',
      'currency3': 'Rs.0',
      'req': 'Required',
      'raised': 'Raised',
      'support': 'supporters'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Surgeries",
            style: TextStyle(color: Colors.purple),
          ),
          actions: const [Icon(Icons.health_and_safety_sharp)],
        ),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.network(
                "https://cdn.pixabay.com/photo/2016/12/05/19/49/syringe-1884784__480.jpg",
                height: 120,
                width: 320,
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                children: <Widget>[
                  Card(
                    child: Container(
                      margin: const EdgeInsets.all(1),
                      height: 50,
                      width: 400,
                      color: Colors.red[300],
                      child: TextButton(
                        style: TextButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 20),
                        ),
                        onPressed: () => {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => SignUp()))
                        },
                        child: const Text(
                            'Registered Your Self Here!!                  >'),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                    itemCount: achievements.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (BuildContext context, int index) {
                      final item = achievements[index];

                      return SizedBox(
                        height: 400,
                        child: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.network(
                                item['image'].toString(),
                              ),
                              Text(
                                item['header']!,
                                textAlign: TextAlign.end,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17.0,
                                ),
                              ),
                              const LinearProgressIndicator(
                                backgroundColor: Colors.red,
                                valueColor:
                                    AlwaysStoppedAnimation<Color>(Colors.green),
                              ),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 5,
                                      width: MediaQuery.of(context).size.width /
                                          1.1,
                                      color: Colors.amber,
                                    )
                                  ]),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Icon(Icons.water_drop_outlined),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        item['currency1'].toString(),
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        item['req'].toString(),
                                        style: TextStyle(color: Colors.grey),
                                      )
                                    ],
                                  ),
                                  const Icon(Icons.heart_broken),
                                  Column(
                                    children: [
                                      Text(
                                        item['currency2'].toString(),
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        item['raised'].toString(),
                                        style: TextStyle(color: Colors.grey),
                                      )
                                    ],
                                  ),
                                  const Icon(Icons.health_and_safety_outlined),
                                  Column(
                                    children: [
                                      Text(
                                        item['currency3'].toString(),
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        item['support'].toString(),
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  ElevatedButton(
                                      onPressed: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const SignUp()));
                                      },
                                      child: const Text(
                                        "Donate Now",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      )),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const SignUp()));
                                    },
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: const [
                                          Icon(Icons.screen_share_outlined),
                                          SizedBox(
                                            width: 4,
                                          ),
                                          Text(
                                            'Share with your friends',
                                          )
                                        ]),
                                    //  Text("Share")
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ]));
  }
}
