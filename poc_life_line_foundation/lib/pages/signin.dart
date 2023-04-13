import 'package:flutter/material.dart';
import 'package:poc_life_line_foundation/widgets/app_bar.dart';

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => _Signin();
}

class _Signin extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   actions: [Icon(Icons.info)],
      // ),
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: MediaQuery.of(context).size.width,
            child: Image.network(
              "https://cdn.pixabay.com/photo/2019/07/06/12/51/palace-4320416__480.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 200.0,
            child: Container(
              height: 450.0,
              width: 400.0,
              padding: const EdgeInsets.all(20.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFormField(
                        obscureText: false,
                        decoration: const InputDecoration(
                          hintText: "email",
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            color: Colors.black,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 2.0, style: BorderStyle.solid),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          hintText: "password",
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 2.0, style: BorderStyle.solid),
                          ),
                          suffixIcon: Icon(Icons.lock),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => AppAndTabBarWidget()));
                        },
                        child: const Text("login"),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => AppAndTabBarWidget()));
                        },
                        child: const Text("signup"),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
              top: 130,
              left: 120.0,
              child: SizedBox(
                height: 130.0,
                width: 130.0,
                //   color: Colors.black,
                child: Center(
                  child: Image.network(
                    "https://cdn.pixabay.com/photo/2022/12/24/18/49/outdoor-7676323__480.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                // child: Center(
                //   child:
                //   Text("DMC_LOGIN",
                //   style: TextStyle(
                //     fontWeight: FontWeight.bold,
                //     fontSize: 30.0,
                //     color: Colors.white,
                //   ),
                //   ),
                // ),
              ))
        ],
      ),
    );
  }
}
