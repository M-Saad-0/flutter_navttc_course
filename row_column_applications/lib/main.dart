import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // home: ImageScreen(),
        home: const Design());
  }
}

class Design extends StatelessWidget {
  const Design({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" - "),
      ),
      body: Center(
        child: Container(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: 200,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      topLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10)),
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(255, 158, 71, 0),
                      Color.fromARGB(255, 218, 166, 125),
                    ],
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 10, bottom: 10, right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(boxShadow: <BoxShadow>[
                          BoxShadow(
                              offset: Offset(0, 0),
                              blurRadius: 50,
                              color: Colors.white)
                        ]),
                        child: Image.asset(
                          "assets/images/breakfast.webp",
                          height: 60,
                          width: 60,
                          // scale: 1.0,
                        ),
                      ),
                      Text(
                        "Breakfast",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromARGB(255, 218, 218, 218),
                            shadows: <Shadow>[
                              Shadow(
                                  offset: Offset(1, 1),
                                  blurRadius: 1,
                                  color: Colors.black)
                            ]),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Bread",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                      Text(
                        "Peanut Butter",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                      Text(
                        "Apple",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                      Container(
                          child: Row(
                        children: [
                          Text(
                            "525",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Kcal",
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255)),
                          )
                        ],
                      ))
                    ],
                  ),
                )),
            SizedBox(
              width: 10,
            ),
            Container(
                height: 200,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      topLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10)),
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(255, 85, 0, 197),
                      Color.fromARGB(255, 157, 114, 212),
                    ],
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 10, bottom: 10, right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(boxShadow: <BoxShadow>[
                          BoxShadow(
                              offset: Offset(0, 0),
                              blurRadius: 50,
                              color: Colors.white)
                        ]),
                        child: Image.asset(
                          "./assets/images/lunch.webp",
                          height: 60,
                          width: 60,
                          scale: 1.0,
                        ),
                      ),
                      Text(
                        "Lunch",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromARGB(255, 218, 218, 218),
                          shadows: <Shadow>[
                            Shadow(
                                offset: Offset(1, 1),
                                blurRadius: 1,
                                color: Colors.black)
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Salman",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                      Text(
                        "Mixed Veggies",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                      Text(
                        "Avocado",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                      Container(
                          child: Row(
                        children: [
                          Text(
                            "602",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Kcal",
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255)),
                          )
                        ],
                      ))
                    ],
                  ),
                )),
            SizedBox(
              width: 10,
            ),
            Container(
                height: 200,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      topLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10)),
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(255, 180, 1, 25),
                      Color.fromARGB(255, 212, 75, 94),
                    ],
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 10, bottom: 10, right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Container(
                          decoration: BoxDecoration(boxShadow: <BoxShadow>[
                            BoxShadow(
                                offset: Offset(0, 0),
                                blurRadius: 50,
                                color: Colors.white)
                          ]),
                          child: Image.asset(
                            "./assets/images/watermelon.webp",
                            height: 60,
                            width: 60,
                            scale: 1.0,
                          ),
                        ),
                      ),
                      Text("Snacks",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromARGB(255, 218, 218, 218),
                              shadows: <Shadow>[
                                Shadow(
                                    offset: Offset(1, 1),
                                    blurRadius: 1,
                                    color: Colors.black)
                              ])),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Recommend",
                        style: TextStyle(
                            color: Color.fromARGB(127, 255, 255, 255)),
                      ),
                      Text(
                        "800 Kcal",
                        style: TextStyle(
                            color: Color.fromARGB(115, 255, 255, 255)),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.add),
                        color: Colors.black,
                        highlightColor: Color.fromRGBO(255, 255, 255, 1),
                        hoverColor: Color.fromARGB(139, 255, 255, 255),
                      ),
                    ],
                  ),
                )),
          ],
        )),
      ),
    );
  }
}
