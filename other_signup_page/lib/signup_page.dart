import 'package:flutter/material.dart';

class signupPage extends StatelessWidget {
  const signupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        width: double.infinity,
        color: Colors.teal,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("./assets/images/image.png"),
            ),
            SizedBox(height: 25),
            Text(
              "Muhammad Saad",
              style: TextStyle(
                  fontFamily: "Dancing Script",
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.w900),
            ),
            SizedBox(height: 25),
            Text(
              "FLUTTER DEVELOPER",
              style: TextStyle(
                fontSize: 13,
                color: const Color.fromARGB(127, 255, 255, 255),
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(children: [
                Container(
                  color: Colors.white,
                  child: ListTile(
                    selectedTileColor: Colors.white,
                    selectedColor: Colors.white,
                    tileColor: Colors.white,
                    iconColor: Colors.teal,
                    textColor: Colors.teal,
                    leading: Icon(Icons.phone),
                    title: Text("+923079374165"),
                    trailing: Icon(Icons.ac_unit),
                  ),
                ),
                gap(),
                Container(
                  color: Colors.white,
                  child: ListTile(
                    tileColor: Colors.white,
                    iconColor: Colors.teal,
                    textColor: Colors.teal,
                    leading: Icon(Icons.phone),
                    title: Text("+923079374165"),
                    trailing: Icon(Icons.ac_unit),
                  ),
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}

class gap extends StatelessWidget {
  const gap({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: SizedBox(
      height: 25,
    ));
  }
}
