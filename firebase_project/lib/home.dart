import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
        actions: [
          IconButton(
              onPressed: () async {
                await firebaseAuth.signOut().then(
                    (value) => print('User has been signout successfully!'));
                setState(() {
                  Navigator.pushNamedAndRemoveUntil(
                      context, 'sign-in-screen-route', (route) => false);
                });
              },
              icon: const Icon(
                Icons.logout,
                color: Colors.red,
              ))
        ],
      ),
      body: Center(
        child: Text('Welcome to the Home Screen'),
      ),
    );
  }
}
