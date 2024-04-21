import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Text Field"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 300,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Color(0xff00DCFB), Color(0xff51F5ED)])),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "   Welcome Back",
                          style: TextStyle(
                              // fontFamily:
                              //     GoogleFont.PlusJakartaSans - Regular.ttf,
                              fontSize: 30,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "          Sign in to continue your journey with yotto",
                          style: TextStyle(fontSize: 10, color: Colors.black45),
                        ),
                        SizedBox(
                          height: 30,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      width: 400,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            hintText: "Email",
                            hintStyle:
                                TextStyle(color: Color.fromARGB(61, 0, 0, 0)),
                            label: Text("Enter your email"),
                            labelStyle: TextStyle(fontSize: 18),
                            prefixIcon: Icon(Icons.person),
                            suffixIcon: Icon(Icons.lock),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(color: Colors.red),
                            )),
                        onTap: () {
                          print("Selected Email Field.");
                        },
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      width: 400,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle:
                              TextStyle(color: Color.fromARGB(61, 0, 0, 0)),
                          label: Text("Enter Your Password"),
                          labelStyle: TextStyle(fontSize: 18),
                          prefixIcon: Icon(Icons.person),
                          suffixIcon: Icon(Icons.lock),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(color: Colors.red),
                          ),
                        ),
                        onTap: () {
                          print("Selected Password Field.");
                        },
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        decoration: BoxDecoration(),
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(color: Colors.cyan, fontSize: 12),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Container(
                    height: 30,
                    width: 250,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Login",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Colors.cyan,
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Not registered yet? "),
                      Text(
                        "Sign Up",
                        style: TextStyle(color: Colors.cyan),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
