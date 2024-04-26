import 'package:flutter/material.dart';
import 'package:flutter_application_2/cusrom_drop_down_widget.dart';
import 'package:flutter_application_2/input_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(body: InputScreen()));
  }
}
