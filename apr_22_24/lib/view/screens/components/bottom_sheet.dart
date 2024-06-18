import 'package:flutter/material.dart';

class BottomSheetClass extends StatelessWidget {
  const BottomSheetClass({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
        onClosing: () {},
        builder: (context) {
          return Container(
              alignment: Alignment.center,
              child: Row(
                children: [],
              ));
        });
  }
}
