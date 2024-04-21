import 'package:flutter/material.dart';

class cAppBar extends StatelessWidget {
  final TextButton button1, button2;
  final Text date;
  const cAppBar(
      {super.key,
      required this.date,
      required this.button1,
      required this.button2});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [button1, date, button2],
      )),
    );
  }
}
