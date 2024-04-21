import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [ElevatedButton(onPressed: () {}, child: Text("Sign Out"))],
      ),
      body: Container(
        child: Text("welcome to home page"),
      ),
    );
  }
}
