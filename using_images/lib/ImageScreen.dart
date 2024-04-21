import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ImageScreen"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        reverse: false,
        child: Column(
          children: [
            Container(
                child: Image.asset("assets/images/download.jpeg",
                    height: 400, width: 400, scale: 1.0)),
            Container(
                child: Image.asset("assets/images/download.jpeg",
                    height: 400, width: 400, scale: 1.0)),
            Container(
                child: Image.asset("assets/images/download.jpeg",
                    height: 400, width: 400, scale: 1.0)),
            Container(
                child: Image.asset("assets/images/download.jpeg",
                    height: 400, width: 400, scale: 1.0))
          ],
        ),
      ),
    );
  }
}
