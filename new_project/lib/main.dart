import 'package:flutter/material.dart';
import 'package:new_project/screens/homescreen/homeScreen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Flutter Alert Dialog and Bottom Bar';
    return MaterialApp(
      title: appTitle,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: homeScreen()
        ),
      );
  }
}

