import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              color: Colors.red,
              width: 200,
              height: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.access_time_filled_sharp,
                    color: Colors.white,
                    size: 54,
                  ),
                  Text(
                    "data",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontStyle: FontStyle.italic),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
