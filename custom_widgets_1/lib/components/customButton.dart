import 'package:flutter/material.dart';

class iconButton extends StatelessWidget {
  final Icon icon;
  final Color c;
  const iconButton({super.key, required this.icon, required this.c});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: icon,
      style: ButtonStyle(iconColor: MaterialStateProperty.all(c)),
      onPressed: () {},
    );
  }
}

class tButton extends StatelessWidget {
  const tButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell();
  }
}
