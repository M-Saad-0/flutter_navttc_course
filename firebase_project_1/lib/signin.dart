import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_project_1/sign_up.dart';
import 'package:flutter/material.dart';

class SingIn extends StatefulWidget {
  const SingIn({super.key});

  @override
  State<SingIn> createState() => _SingInState();
}

class _SingInState extends State<SingIn> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) {
                      //   return MyHomePage(title: "Not Working");
                      // }));
                    }
                  },
                  child: Text("SignIn")),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return SingupScreen();
                    }));
                  },
                  child: Text("Go to SignUp Sceen"))
            ],
          ),
        ),
      ),
    );
  }
}
