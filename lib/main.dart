import 'package:flutter/material.dart';
//import 'task_1.dart';
import 'task_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: Task1Screen(),
      home: Task2Screen(),
    );
  }
}