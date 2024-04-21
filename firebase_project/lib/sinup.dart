import 'package:firebase_project/home.dart';
import 'package:firebase_project/signin.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  FirebaseAuth firebaseAuth = FirebaseAuth.instance; // create auth instance
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up screen'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 40.0, right: 40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Email',
                ),
              ),
              const SizedBox(height: 10.0),
              TextField(
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'password',
                ),
              ),
              const SizedBox(height: 10.0),
              ElevatedButton(
                  onPressed: () async {
                    print('pressed!');
                    UserCredential userCredential =
                        await firebaseAuth.createUserWithEmailAndPassword(
                            email: emailController.text,
                            password: passwordController.text);

                    if (userCredential.user != null) {
                      print(userCredential.user);
                      Navigator.pushNamedAndRemoveUntil(
                          context, 'home-screen-route', (route) => false);
                    }
                  },
                  child: Text('Sign up')),
              const SizedBox(height: 20.0),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, 'sign-in-screen-route', (route) => false);
                  },
                  child: Text('Go to login screen'))
            ],
          ),
        ),
      ),
    );
  }
}
