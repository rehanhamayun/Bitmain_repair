import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:test_app/screens/home_page.dart';
import 'package:test_app/screens/splash_screen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(

      builder:(context, orientation, deviceType) {
        return MaterialApp(
          title: 'Splash Screen',
          theme: ThemeData(
            primarySwatch: Colors.green,
          ),
          home: MyHomePage(),
          debugShowCheckedModeBanner: false,
        );

      }
    );
  }
}






