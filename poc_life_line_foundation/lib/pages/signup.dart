import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:poc_life_line_foundation/pages/medical_camps.dart';
import 'package:poc_life_line_foundation/pages/Expenses.dart';
import 'package:poc_life_line_foundation/widgets/app_bar.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final email = TextEditingController();
  final password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Signup"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Name",
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20.0),
                  border: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 2.0, style: BorderStyle.solid))),
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "Username",
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20.0),
                  border: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 2.0, style: BorderStyle.solid))),
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextFormField(
              controller: email,
              obscureText: false,
              decoration: const InputDecoration(
                hintText: "email",
                hintStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20.0),
                border: OutlineInputBorder(
                    borderSide:
                        BorderSide(width: 2.0, style: BorderStyle.solid)),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextFormField(
              controller: password,
              obscureText: true,
              decoration: const InputDecoration(
                  hintText: "password",
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20.0),
                  border: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 2.0, style: BorderStyle.solid)),
                  suffixIcon: Icon(Icons.lock)),
            ),
            const SizedBox(height: 30.0),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => AdminExpenses()));
                if (kDebugMode) {
                  print(email.text.toString());
                }
                if (kDebugMode) {
                  print(password.text.toString());
                }
              },
              child: const Text("Signup"),
            )
          ],
        ),
      ),
    );
  }
}
