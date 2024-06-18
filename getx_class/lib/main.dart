import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/getxController.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final appController = Get.put(AppController());
    return GetMaterialApp();
  }
}
