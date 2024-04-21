import 'package:flutter/material.dart';
import 'package:socail_media_clone/components/profileWidget.dart';
import 'package:socail_media_clone/components/tagWidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(),
        home: Scaffold(
          body: Container(
            decoration: BoxDecoration(color: Colors.black),
            child: Column(
              children: [
                myProfile(),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      tag(borderColor: Colors.white, tagText: "Popular"),
                      tag(
                          borderColor: Color.fromARGB(255, 45, 47, 45),
                          tagText: "Trending"),
                      tag(
                          borderColor: Color.fromARGB(255, 45, 47, 45),
                          tagText: "Recent"),
                      tag(
                          borderColor: Color.fromARGB(255, 45, 47, 45),
                          tagText: "For You")
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
