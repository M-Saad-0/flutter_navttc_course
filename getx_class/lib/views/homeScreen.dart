import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../constants/const_colors.dart';
import '../controller/getxController.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final appController = Get.find<AppController>();

  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        appBar: null,
        body: Column(
          children: [
            Container(
              child: Checkbox(
                value: isSelected,
                onChanged: (value) {
                  setState(() {
                    isSelected = value!;
                  });
                },
              ),
            ),
            Container(
              height: Get.height * .200,
              width: Get.width * .200,
              color: Colorizing.color1.value,
              child: Checkbox(
                value: appController.fav.value,
                onChanged: (newValue) {
                  appController.fav.value = newValue!;
                },
              ),
            )
          ],
        ),
      );
    });
  }
}
