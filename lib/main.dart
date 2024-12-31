import 'package:firstproject/first_project2.dart';
import 'package:firstproject/projects/exersice.dart';
import 'package:firstproject/projects/first_project.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     title: "projects",
      home: Exersice(),
    );
  }
}

