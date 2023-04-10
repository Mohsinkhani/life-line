import 'package:flutter/material.dart';
import 'package:poc_life_line_foundation/pages/signup.dart';

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
                                  builder: (context) => const SignUp()))
                        },
                        child: const Text(
                            'Registered Your Self Here!!                  >'),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              SizedBox(
                height: 400,
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(
                          "https://cdn.pixabay.com/photo/2022/12/24/18/49/outdoor-7676323__480.jpg"),
                      const Text(
                        "Support cat cochlear implant surgery",
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17.0,
                        ),
                      ),
                      const LinearProgressIndicator(
                        backgroundColor: Colors.red,
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 5,
                              width: MediaQuery.of(context).size.width / 1.1,
                              color: Colors.amber,
                            )
                          ]),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Icon(Icons.water_drop_outlined),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Rs.2,345,123",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Required",
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                          const Icon(Icons.heart_broken),
                          Column(
                            children: const [
                              Text(
                                "Rs.0",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Raised",
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                          const Icon(Icons.health_and_safety_outlined),
                          Column(
                            children: const [
                              Text(
                                "Rs.0",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Supporters",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const SignUp()));
                              },
                              child: const Text(
                                "Donate Now",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              )),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const SignUp()));
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
              ),
              Card(
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
                                  builder: (context) => const SignUp()));
                            },
                            child: const Text(
                              "Donate Now",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            )),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const SignUp()));
                          },
                          child: const Icon(Icons.screen_share_outlined),
                          //  Text("Share")
                        ),
                        const Text(
                          "Share with friends",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

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
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const SignUp()));
                              },
                              child: const Text(
                                "Donate Now",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              )),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const SignUp()));
                            },
                            child: const Icon(Icons.screen_share_outlined),
                            //  Text("Share")
                          ),
                          const Text(
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
