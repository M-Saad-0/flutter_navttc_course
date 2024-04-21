import 'package:flutter/material.dart';

class customWidget extends StatelessWidget {
  Text title;
  Function()? onTap;
  customWidget({super.key, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          alignment: Alignment.center,
          height: 50,
          width: 100,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                  colors: [
                    Color(0xff00DCFB),
                    Color(0xff5FF9FE),
                    Color(0xff75FDFF),
                    Color(0xff8CFFFF),
                    Color(0xffD151F5ED)
                  ]),
              borderRadius: BorderRadius.circular(10)),
          child: title),
    );
  }
}
