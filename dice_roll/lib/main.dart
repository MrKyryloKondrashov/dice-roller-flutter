import 'package:flutter/material.dart';
import 'package:dice_roll/my_gadient.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: Scaffold(
      body:MyGradient() ,
    ));
  }
}
