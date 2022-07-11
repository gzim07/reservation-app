// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Travel App',
        debugShowCheckedModeBanner: false,
        home: WelcomePage());
  }
}
