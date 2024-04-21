import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_project_1/home.dart';
import 'package:firebase_project_1/signin.dart';
import 'package:flutter/material.dart';

class SingupScreen extends StatefulWidget {
  const SingupScreen({super.key});

  @override
  State<SingupScreen> createState() => _SingupScreenState();
}

class _SingupScreenState extends State<SingupScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                    labelText: "Email",
                    hintText: "Email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () async {
                    UserCredential userCredential =
                        await firebaseAuth.createUserWithEmailAndPassword(
                            email: emailController.text,
                            password: passwordController.text);
                    if (userCredential.user != null) {
                      print(userCredential.user);
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return HomeScreen();
                      }));
                    }
                  },
                  child: Text("SignUp")),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return SingIn();
                    }));
                  },
                  child: Text("Go to SignIn Sceen"))
            ],
          ),
        ),
      ),
    );
  }
}
