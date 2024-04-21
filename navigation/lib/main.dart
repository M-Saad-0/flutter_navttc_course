import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:navigation/homePage.dart';
import 'package:navigation/secondScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Navigation Flutter",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'PlusJakataSans'),
      home: secondScreen(),
    );
  }
}

class firstScreen extends StatefulWidget {
  const firstScreen({super.key});

  @override
  State<firstScreen> createState() => _firstScreenState();
}

class _firstScreenState extends State<firstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.topRight,
                    colors: [
                  Color(0xff00DCFB),
                  Color(0xff5FF9FE),
                  Color(0xff75FDFF),
                  Color(0xff8CFFFF),
                  Color(0xffD151F5ED)
                ])),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Create an account",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    textAlign: TextAlign.start,
                    "Enter your name, email and password to get registered on the app",
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Name",
                          hintStyle:
                              TextStyle(color: Color.fromARGB(117, 0, 0, 0)),
                          label: Text("Enter Your Name"),
                          labelStyle: TextStyle(fontSize: 15),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(color: Colors.cyan)),
                          prefixIcon: Icon(Icons.person),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: "Email",
                          hintStyle:
                              TextStyle(color: Color.fromARGB(117, 0, 0, 0)),
                          label: Text("Enter Your Email"),
                          labelStyle: TextStyle(fontSize: 15),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(color: Colors.cyan)),
                          prefixIcon: Icon(Icons.email),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                            hintText: "Password",
                            hintStyle:
                                TextStyle(color: Color.fromARGB(117, 0, 0, 0)),
                            label: Text("Enter Your Password"),
                            labelStyle: TextStyle(fontSize: 15),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(color: Colors.cyan)),
                            prefixIcon: Icon(Icons.password_sharp),
                            suffixIcon: Icon(Icons.lock)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          hintText: "Confirm Password",
                          hintStyle:
                              TextStyle(color: Color.fromARGB(117, 0, 0, 0)),
                          label: Text("Confirm Your Password"),
                          labelStyle: TextStyle(fontSize: 15),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(color: Colors.cyan)),
                          prefixIcon: Icon(Icons.wifi_protected_setup),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Container(
                          alignment: Alignment.center,
                          height: 35,
                          width: 200,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.topRight,
                                  colors: [
                                    Color(0xff00DCFB),
                                    Color(0xff5FF9FE),
                                    Color(0xff75FDFF),
                                    Color(0xff8CFFFF),
                                    Color(0xffD151F5ED)
                                  ]),
                              borderRadius: BorderRadius.circular(10)),
                          child: Text("Sign In")),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have an account?",
                          ),
                          TextButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.white),
                                foregroundColor:
                                    MaterialStateProperty.all(Colors.cyan),
                              ),
                              onPressed: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const secondScreen()),
                                  ),
                              child: Text(
                                "Log in",
                                style: TextStyle(fontSize: 18),
                              ))
                        ],
                      ),
                    ],
                  ))
            ],
          ),
        ),
        TextButton(
          child: Text("Text"),
          onPressed: () {},
        )
      ],
    ));
  }
}
