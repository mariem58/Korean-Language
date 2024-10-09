import 'package:flutter/material.dart';
import 'package:tuko_app/Screens/home_page.dart';
import 'package:tuko_app/Screens/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learn Korean',
        debugShowCheckedModeBanner: false,
      home:  Welcome(),
    );
  }
}

