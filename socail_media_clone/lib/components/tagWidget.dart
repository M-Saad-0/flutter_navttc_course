import 'package:flutter/material.dart';

class tag extends StatelessWidget {
  final String tagText;
  final Color borderColor;
  const tag({super.key, required this.borderColor, required this.tagText});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          alignment: Alignment.center,
          height: 40,
          width: 100,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 45, 47, 45),
              border: Border.all(color: borderColor),
              borderRadius: BorderRadius.circular(20)),
          child: Text(
            tagText,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
