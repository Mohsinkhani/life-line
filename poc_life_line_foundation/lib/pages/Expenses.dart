import 'package:flutter/material.dart';
import 'package:poc_life_line_foundation/pages/signin.dart';

class AdminExpenses extends StatelessWidget {
  AdminExpenses();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Admin Expenses"),
      ),
      body: Center(
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
            top: 170.0,
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
                            "Donate for Admin Expense",
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
                            style: TextStyle(color: Colors.grey, fontSize: 18),
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
                                              builder: (context) => Signin()));
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
    );
  }
}
