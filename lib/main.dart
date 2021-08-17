import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:works/screens/home_screen/home_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Color(0xfff2f2f2),
    statusBarIconBrightness: Brightness.dark, // status bar color
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Works',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xfff2f2f2),
        primarySwatch: Colors.teal,
      ),
      home: HomeScreen(),
    );
  }
}
