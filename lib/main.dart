import 'package:explore/Enrolled_clubs.dart';
import 'package:explore/calender.dart';
import 'package:explore/club.dart';
import 'package:explore/home_screen.dart';
// import 'package:explore/home_screen.dart';
import 'package:explore/login.dart';
import 'package:explore/profile.dart';
import 'package:explore/sign_up.dart';
import 'package:explore/welcome_back.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Home_Screen(),
    );
  }
}
