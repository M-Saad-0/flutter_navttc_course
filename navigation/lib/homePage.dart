import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './customWidget.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
        children: [
          Text(
            "Homepage",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w900,
            ),
          ),
          customWidget(
              title: Text("title"),
              onTap: () {
                Navigator.pop(context);
              })
        ],
      )),
    );
  }
}
