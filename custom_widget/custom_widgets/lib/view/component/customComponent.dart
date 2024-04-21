import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class reuseableWidget extends StatelessWidget {
  final Text mainText, ingredient1, ingredient2, ingredient3, energy;
  final Image img;
  final Color clrs;
  const reuseableWidget(
      {super.key,
      required this.mainText,
      required this.ingredient1,
      required this.ingredient2,
      required this.ingredient3,
      required this.energy,
      required this.img,
      required this.clrs});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Container(
      height: 200,
      width: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(50),
              topLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
              bottomLeft: Radius.circular(10)),
          color: clrs),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, bottom: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(boxShadow: <BoxShadow>[
                BoxShadow(
                    offset: Offset(0, 0), blurRadius: 50, color: Colors.white)
              ]),
              child: Image.asset(
                "assets/images/breakfast.webp",
                height: 60,
                width: 60,
                // scale: 1.0,
              ),
            ),
            Text(
              "Breakfast",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: const Color.fromARGB(255, 218, 218, 218),
                  shadows: <Shadow>[
                    Shadow(
                        offset: Offset(1, 1),
                        blurRadius: 1,
                        color: Colors.black)
                  ]),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Bread",
              style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
            ),
            Text(
              "Peanut Butter",
              style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
            ),
            Text(
              "Apple",
              style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
            ),
            Container(
                child: Row(
              children: [
                Text(
                  "525",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Kcal",
                  style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                )
              ],
            ))
          ],
        ),
      ),
    ));
  }
}
