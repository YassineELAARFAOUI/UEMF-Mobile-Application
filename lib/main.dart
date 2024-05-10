import 'package:flutter/material.dart';
import 'package:projecteuromedflutter/pages/newsUemf.dart';
import 'package:projecteuromedflutter/pages/registerStudent.dart';
import 'package:projecteuromedflutter/pages/registerTeacher.dart';
import './pages/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: login(),
    );
  }
}
