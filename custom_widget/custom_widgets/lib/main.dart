import 'package:custom_widgets/view/component/customComponent.dart';

import 'view/component/widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
          child: Row(
            children: [
              reuseableWidget(
                mainText: Text("Breakfast"),
                ingredient1: Text("Bread"),
                ingredient2: Text("Peanut butter"),
                ingredient3: Text("Apple"),
                energy: Text("525"),
                img: Image.asset("./../assets/images/breakfast.webp"),
                clrs: Color.fromARGB(255, 158, 71, 0),
              ),
              SizedBox(
                width: 15,
              ),
              reuseableWidget(
                mainText: Text("Diner"),
                ingredient1: Text("Watermelon"),
                ingredient2: Text("Peanut butter"),
                ingredient3: Text("Apple"),
                energy: Text("525"),
                img: Image.asset("./../assets/images/lunch.png"),
                clrs: Color.fromARGB(255, 0, 158, 111),
              ),
              SizedBox(
                width: 15,
              ),
              reuseableWidget(
                  mainText: Text("Lunch"),
                  ingredient1: Text("Wheat Bread"),
                  ingredient2: Text("Peanut butter"),
                  ingredient3: Text("Apple"),
                  energy: Text("525"),
                  img: Image.asset("./../assets/images/watermelon.webp"),
                  clrs: Color.fromARGB(255, 125, 126, 218)),
            ],
          ),
        ),
      ),
    );
  }
}
