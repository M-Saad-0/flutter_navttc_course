import 'package:flutter/material.dart';
import 'package:other_signup_page/signup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: signupPage());
  }
}
