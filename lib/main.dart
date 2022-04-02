import 'package:flutter/material.dart';
import 'package:login_and_user_authentication/OnboardScreens/onboard1.dart';
// import 'package:login_and_user_authentication/screens/Onboard.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login and User Authentication',
      debugShowCheckedModeBanner: false,
      home: Onboard1(),
    );
  }
}