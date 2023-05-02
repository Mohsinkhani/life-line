import 'package:flutter/material.dart';
import 'package:poc_life_line_foundation/pages/signin.dart';
import 'package:poc_life_line_foundation/pages/signup.dart';

class upcoming1 extends StatelessWidget {
  upcoming1({
    super.key,
  });

  // final achievements = [
  //   {
  //     'image':
  //         "https://cdn.pixabay.com/photo/2022/12/24/18/49/outdoor-7676323__480.jpg",
  //     'header': 'Support cat cochlear implant surgery',
  //     'currency1': 'Rs.21234',
  //     'currency2': 'Rs.0',
  //     'currency3': 'Rs.0',
  //     'req': 'Required',
  //     'raised': 'Raised',
  //     'target': 'Remaining'
  //   },
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "M Camp 1",
            style: TextStyle(color: Colors.purple),
          ),
          actions: const [Icon(Icons.health_and_safety_sharp)],
        ),
        body: Stack(children: [
          ListView(
            children: [
              Column(
                children: [
                  Card(
                    elevation: 8,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                            'https://cdn.pixabay.com/photo/2022/12/24/18/49/outdoor-7676323__480.jpg'),
                        const Text(
                          'Support cat cochlear implant surgery',
                          textAlign: TextAlign.end,
                          style: TextStyle(
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
                                  '21234',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '21234',
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
                            const Icon(Icons.heart_broken),
                            Column(
                              children: const [
                                Text(
                                  'Rs.0',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'raised',
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
                            const Icon(Icons.health_and_safety_outlined),
                            Column(
                              children: const [
                                Text(
                                  'Rs.o',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'support',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 1,
                          width: 384,
                          color: Colors.grey,
                        ),
                        const Text(
                            'Transparent Hands will be setting up a free medical camp in Badin, Sindh. At this medical camp, hundreds of deserving patients will receive the following services from our team of dedicated doctors and specialists:'),
                        const Text('Free Consultation'),
                        const Text('Free Medicines'),
                        const Text('Free Hepatitis B & C Screening'),
                        const Text(
                          'Our Solution:',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        const Text(
                            'To address the lack of quality health care in Badin, Transparent Hands aims to organize a free medical camp. We will provide free consultations, medicines, and diagnostic tests to deserving patients. Besides this, Transparent Hands plans to register deserving patients that need surgeries and medical procedures. Donate online and help Transparent in bringing quality health care to the people of Sindh.'),
                        const Text(
                          'Challenges',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(
                            'Kotri is a city in the Jamshoro district of Pakistan’s Sindh province, located in the country’s southeast. It is the 29th largest city in Pakistan with a population of 223,617, as of current data. The region remains largely neglected in terms of healthcare facilities. The recent wave of floods has displaced thousands of people who are in dire need of medical care and shelter now. Most of the people who are still on the ground are battling diarrhea, malaria, dengue fever, chest infections, and several skin diseases. '),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 1,
                          width: 384,
                          color: Colors.grey,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const SignUp()));
                              },
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Icon(Icons.screen_share_outlined),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      'Share with your friends',
                                      style: TextStyle(
                                          fontSize: 17, color: Colors.black),
                                    )
                                  ]),
                              //  Text("Share")
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  //  Text("Share")

                  Container(
                    height: 150,
                    width: 384,
                    color: Colors.green[400],
                    child: Column(
                      children: [
                        const Text(
                          "Supportors",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            // Padding(padding: EdgeInsets.all(20)),
                            Column(
                              children: [
                                Text('data'),
                                SizedBox(
                                  height: 5,
                                ),
                                Text('data'),
                                Text('data'),
                              ],
                            ),
                            Column(
                              children: [
                                Text('data'),
                                SizedBox(
                                  height: 5,
                                ),
                                Text('data'),
                                Text('data'),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40)
                ],
              ),
            ],
          ),
          Positioned(
            child: Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 35,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0.0),
                      )),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Signin()));
                      },
                      child: const Text(
                        "Donate Now",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      )),
                )),
          )
        ]));
  }
}
