import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tailor_app/first.dart';
import 'package:tailor_app/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => NumberProvider())
      ],
      child: const MaterialApp(
        home: SafeArea(
          child: First(),
        ),
      ),
    );
  }
}
