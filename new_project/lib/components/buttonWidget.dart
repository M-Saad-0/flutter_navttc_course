import 'package:flutter/material.dart';

class button extends StatelessWidget {
  final Function() onPressed;
  final String buttonText;
  final double height, width;
  final Color c1, c2, textColor;
  const button({super.key, required this.onPressed,required this.buttonText, required this.height, required this.width, required this.c1, required this.c2, required this.textColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        width: this.width,
        height: this.height,
        child:Text(buttonText, style: TextStyle(color: textColor, fontSize: (width*6)/height),),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), gradient: LinearGradient(begin: Alignment.bottomLeft ,end: Alignment.topRight, colors: [c1, c2])
        ),
      ),
    );
  }
}