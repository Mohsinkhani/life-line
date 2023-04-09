import 'package:flutter/material.dart';
import 'package:poc_life_line_foundation/pages/signup.dart';
import 'package:poc_life_line_foundation/widgets/app_bar.dart';

class SurgeriesPage extends StatelessWidget {
  const SurgeriesPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Surgeries",
          style: TextStyle(color: Colors.purple),
        ),
        actions: [Icon(Icons.health_and_safety_sharp)],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.network(
            "https://cdn.pixabay.com/photo/2016/12/05/19/49/syringe-1884784__480.jpg",
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView(children: [
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
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Textfield()))
                        },
                        child: const Text(
                            'Registered Your Self Here!!                  >'),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),

              Container(
                child: Card(
                  child: Column(
                    children: [
                      Image.network(
                          "https://cdn.pixabay.com/photo/2022/12/24/18/49/outdoor-7676323__480.jpg"),
                      Row(
                        children: const [
                          Text(
                            "Support cat cochlear implant surgery",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17.0,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.water_drop_outlined),
                          Column(
                            children: [
                              const Text(
                                "Rs.2,345,123",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Column(
                                children: const [
                                  Text(
                                    "Required",
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ],
                              ),
                            ],
                          ),
                          const Icon(Icons.heart_broken),
                          Column(
                            children: [
                              const Text(
                                "Rs.0",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Column(
                                children: const [
                                  Text(
                                    "Raised",
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ],
                              )
                            ],
                          ),
                          const Icon(Icons.health_and_safety_outlined),
                          Column(
                            children: [
                              const Text(
                                "Rs.0",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Column(
                                children: const [
                                  Text(
                                    "Supporters",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Textfield()));
                              },
                              child: Text(
                                "Donate Now",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              )),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Textfield()));
                            },
                            child: Icon(Icons.screen_share_outlined),
                            //  Text("Share")
                          ),
                          Text(
                            "Share with friends",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Card(
                  child: Column(
                    children: [
                      Image.network(
                          "https://cdn.pixabay.com/photo/2022/12/24/18/49/outdoor-7676323__480.jpg"),
                      Row(
                        children: const [
                          Text(
                            "Support cat cochlear implant surgery",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17.0,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(Icons.water_drop_outlined),
                          Column(
                            children: [
                              const Text(
                                "Rs.2,345,123",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Column(
                                children: const [
                                  Text(
                                    "Required",
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ],
                              )
                            ],
                          ),
                          const Icon(Icons.heart_broken),
                          Column(
                            children: [
                              const Text(
                                "Rs.0",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Column(
                                children: const [
                                  Text(
                                    "Raised",
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ],
                              )
                            ],
                          ),
                          const Icon(Icons.health_and_safety_outlined),
                          Column(
                            children: [
                              const Text(
                                "Rs.0",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Column(
                                children: const [
                                  Text(
                                    "Supporters",
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Textfield()));
                              },
                              child: Text(
                                "Donate Now",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              )),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Textfield()));
                            },
                            child: Icon(Icons.screen_share_outlined),
                            //  Text("Share")
                          ),
                          Text(
                            "Share with friends",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),

              Container(
                child: Card(
                  child: Column(
                    children: [
                      Image.network(
                          "https://cdn.pixabay.com/photo/2022/12/24/18/49/outdoor-7676323__480.jpg"),
                      Row(
                        children: const [
                          Text(
                            "Support Rashid cochlear implant surgery",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17.0,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.water_drop_outlined),
                          Column(
                            children: [
                              const Text(
                                "Rs.2,345,123",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Column(
                                children: const [
                                  Text(
                                    "Required",
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ],
                              )
                            ],
                          ),
                          Icon(Icons.heart_broken),
                          Column(
                            children: [
                              const Text(
                                "Rs.0",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Column(
                                children: const [
                                  Text(
                                    "Raised",
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ],
                              )
                            ],
                          ),
                          const Icon(Icons.health_and_safety_outlined),
                          Column(
                            children: [
                              const Text(
                                "Rs.0",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Column(
                                children: const [
                                  Text(
                                    "Supporters",
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Textfield()));
                              },
                              child: Text(
                                "Donate Now",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              )),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Textfield()));
                            },
                            child: Icon(Icons.screen_share_outlined),
                            //  Text("Share")
                          ),
                          Text(
                            "Share with friends",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              // Column(
              //   children: [
              //     Card(
              //       child: Container(
              //         height: 200,
              //         width: 350,
              //         color: Colors.green,
              //         alignment: Alignment.center,
              //         // child: Image.network(
              //         //     'https://www.pexels.com/photo/city-people-art-eiffel-tower-16110063',
              //         //     width: double.infinity,
              //         //     fit: BoxFit.cover,
              //         //     )
              //       ),
              //     ),
              //     Row(
              //       children: [
              //         Container(
              //           child: const Text(
              //             "Support cat cochlear implant surgery",
              //             style: TextStyle(fontSize: 20),
              //             textAlign: TextAlign.center,
              //           ),
              //           margin: EdgeInsets.only(left: 20),
              //         ),
              //         Column(
              //           children: const <Widget>[
              //             Icon(Icons.water_drop_outlined)
              //           ],
              //         )
              //       ],
              //     )
              //   ],
              // ),
            ]),
          ),
        ],
      ),
    );
  }
}
