import 'package:custom_widgets_1/components/customAppBar.dart';
import 'package:custom_widgets_1/components/customBox.dart';
import 'package:custom_widgets_1/components/customButton.dart';
import 'package:custom_widgets_1/components/customCourseBox.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  final double w = 150, hmin = 150, hmax = 175;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                cAppBar(
                  date: Text(
                    "26 March 2024",
                    style: TextStyle(fontSize: 10),
                  ),
                  button1: TextButton(
                    child: Icon(Icons.arrow_drop_down),
                    style: ButtonStyle(
                        iconColor: MaterialStateProperty.all(Colors.black)),
                    onPressed: () {},
                  ),
                  button2: TextButton(
                    child: Icon(Icons.calendar_month_rounded),
                    style: ButtonStyle(
                        iconColor: MaterialStateProperty.all(Colors.black)),
                    onPressed: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(11),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "My Tasks",
                        style: TextStyle(fontWeight: FontWeight.w900),
                      ),
                      Icon(Icons.settings)
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          customBox(
                              height: hmax,
                              width: w,
                              icon: Icon(
                                Icons.book,
                                size: 70,
                              ),
                              t1: ("Studying"),
                              t2: ("10 Hours"),
                              c: Colors.pink),
                          customBox(
                              height: hmin,
                              width: w,
                              icon: Icon(
                                Icons.bed,
                                size: 50,
                              ),
                              t1: ("Sleep"),
                              t2: ("8 Hours"),
                              c: Colors.blue)
                        ],
                      ),
                      Column(
                        children: [
                          customBox(
                              height: hmin,
                              width: w,
                              icon: Icon(
                                Icons.mobile_friendly,
                                size: 50,
                              ),
                              t1: ("App Dev"),
                              t2: ("10 Hours"),
                              c: Colors.orange),
                          customBox(
                              height: hmax,
                              width: w,
                              icon: Icon(
                                Icons.copy,
                                size: 70,
                              ),
                              t1: ("Blogging"),
                              t2: ("8 Hours"),
                              c: Colors.green)
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "On Going",
                        style: TextStyle(fontWeight: FontWeight.w900),
                      ),
                      Text(
                        "See all",
                        style: TextStyle(color: Colors.pink),
                      )
                    ],
                  ),
                ),
                customCourseBox(
                    completion: "80% Completed",
                    courseName: "Startup Responcive Web Design",
                    duration: "10:00 AM - 12:30 PM"),
                customCourseBox(
                    completion: "10% Completed",
                    courseName: "Backend with Golang",
                    duration: "8:00 AM - 10:30 PM"),
                customCourseBox(
                    completion: "20% Completed",
                    courseName: "Flutter",
                    duration: "2:00 PM - 5:00 PM"),
                Container(
                  alignment: Alignment.centerRight,
                  child: FloatingActionButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.add,
                      color: Colors.black,
                    ),
                    backgroundColor: Colors.pink,
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
