import 'package:flutter/material.dart';

class customBox extends StatelessWidget {
  final double width, height;
  final Icon icon;
  final String t1, t2;
  final Color c;
  const customBox(
      {super.key,
      required this.height,
      required this.width,
      required this.icon,
      required this.t1,
      required this.t2,
      required this.c});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: c,
            boxShadow: [
              BoxShadow(color: c, offset: Offset(1, 1), blurRadius: 30),
            ],
            borderRadius: BorderRadius.circular(30)),
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              icon,
              Column(
                children: [
                  Text(
                    t1,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    t2,
                    style:
                        TextStyle(fontSize: 10, fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
