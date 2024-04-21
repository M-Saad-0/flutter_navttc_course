import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expanded Demo Application',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Row(
      children: [
        Expanded(
            child: Container(
          color: Colors.red,
        )),
        Expanded(
            child: Container(
          color: Colors.green,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.yellow,
              ),
              Container(
                height: 100,
                width: 100,
                color: const Color.fromARGB(255, 221, 212, 131),
              ),
            ],
          ),
        )),
        Expanded(
            child: Container(
          color: Colors.blue,
        ))
      ],
    )));
  }
}
