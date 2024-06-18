import 'package:apr_23_24/constant/const_color.dart';
import 'package:apr_23_24/controller/appController.dart';
import 'package:apr_23_24/ui/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appController = Get.put(AppController());

    return GetMaterialApp(theme: ThemeData(), home: HomeScreen());
  }
}
