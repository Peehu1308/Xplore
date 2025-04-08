import 'package:explore/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_polygon/flutter_polygon.dart';

class SignUp extends StatelessWidget {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 255, 254, 254),
              Color.fromARGB(255, 249, 243, 248),
              Color.fromARGB(255, 251, 250, 251),
            ]),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: 250,
                  height: 250,
                  // decoration: BoxDecoration(
                  //   boxShadow: [
                  //     BoxShadow(
                  //       color: Colors.deepPurple.withOpacity(0.5),
                  //       blurRadius: 0,
                  //       spreadRadius: 0,
                  //     ),
                  //   ],
                  // ),
                  child: ClipPolygon(
                    sides: 6,
                    borderRadius: 16.0,
                    child: Container(color: Color.fromARGB(255, 243, 213, 227)),
                  ),
                ),
                SizedBox(
                  width: 170,
                  height: 170,
                  // decoration: BoxDecoration(
                  //   boxShadow: [
                  //     BoxShadow(
                  //       color: Colors.black26,
                  //       blurRadius: 4,
                  //       spreadRadius: 2,
                  //     ),
                  //   ],
                  // ),
                  child: ClipPolygon(
                    sides: 6,
                    borderRadius: 6.0,
                    child: Container(
                      color: Color(0xFFE8A9C5),
                      alignment: Alignment.center,
                      child: const Text(
                        'Xplore',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // TextField(
            //   controller: email,
            //   keyboardType: TextInputType.emailAddress,
            //   decoration: InputDecoration(labelText: "Email"),
            // )
            const SizedBox(height: 20),
            textfield(email, "Email"),
            const SizedBox(
              height: 20,
            ),
            textfield(password, "Enter your Password"),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => const Home_Screen()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: const StadiumBorder(
                      // borderRadius: BorderRadius.circular(100),
                      ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 80),
                ),
                child: const Text(
                  "Proceed",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                )),
                const SizedBox(height: 30),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => const Home_Screen()));
                  },
                  child: const Text(
                    "Create an Account",
                    style: TextStyle(color: Colors.black),
                  )),
          ],
          
        ),
      ),
    ));
  }
}

Widget textfield(TextEditingController controller, String hint,
    {bool obscureText = false}) {
  return Container(
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
          )
        ]),
    child: TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
          hintText: hint,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none,
          ),
          fillColor: Colors.white),
    ),
  );
}
