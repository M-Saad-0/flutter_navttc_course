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
        reverse: true,
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: Image.asset("./assets/images/image.jpg"))),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  child: Image.asset("assets/images/download.jpeg",
                      height: 150, width: 300, scale: 1.0)),
              Text("This is an image"),
              Container(
                  child: Image.asset("assets/images/download1.jpeg",
                      height: 150, width: 300, scale: 1.0)),
              Text("This is an image"),
              Container(
                  child: Image.asset("assets/images/download2.jpeg",
                      height: 150, width: 300, scale: 1.0)),
              Text("This is an image"),
              Container(
                  child: Image.asset("assets/images/download3.jpeg",
                      height: 150, width: 300, scale: 1.0)),
              Text("This is an image"),
              Container(
                  child: Image.network(
                      "https://cdn.pixabay.com/photo/2024/03/12/17/31/landscape-8629229_960_720.jpg",
                      height: 150,
                      width: 300,
                      scale: 1.0)),
              Text("This is an image"),
            ],
          ),
        ),
      ),
    );
  }
}
