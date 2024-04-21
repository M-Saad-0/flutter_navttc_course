import 'package:flutter/material.dart';

class button extends StatelessWidget {
  final Text title;
  final Color color;
  button({super.key, required this.color, required this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Container(
          alignment: Alignment.center,
          height: 80,
          width: double.infinity,
          decoration: BoxDecoration(color: color),
          child: title,
        ),
      ),
    );
  }
}
