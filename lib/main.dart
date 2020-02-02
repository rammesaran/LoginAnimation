import 'package:animation/screens/details.dart';
import 'package:animation/screens/homescreen.dart';
import 'package:animation/screens/login.dart';
import 'package:animation/screens/registration.dart';
import 'package:animation/screens/splashscreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

