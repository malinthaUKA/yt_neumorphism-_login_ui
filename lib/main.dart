import 'package:flutter/material.dart';
import 'package:yt_neumorphism_login_ui/Designs/login_signup_design.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginSignupDesign(),
    );
  }
}
