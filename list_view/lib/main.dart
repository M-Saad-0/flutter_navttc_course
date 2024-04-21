import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff333333),
          title: Text("Lessons", style: TextStyle(color: Colors.white)),
          centerTitle: true,
          actions: [
            Icon(
              Icons.menu,
              color: Colors.white,
            )
          ],
        ),
        body: Container(
            decoration: BoxDecoration(color: Color(0xff333333)),
            child: Container(
              height: double.infinity,
              child: Container(
                child: ListView.builder(itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 64, 64, 64)),
                          child: ListTile(
                            leading: Icon(
                              Icons.autorenew,
                              color: Colors.white,
                            ),
                            title: Text("Introduction to driving",
                                style: TextStyle(color: Colors.white)),
                            subtitle: Text("Intermediate",
                                style: TextStyle(color: Colors.white)),
                            trailing:
                                Icon(Icons.navigate_next, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            )),
      ),
    );
  }
}
