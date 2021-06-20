import 'package:flutter/material.dart';
import 'package:submission_fluter_dicoding/detail_screen.dart';
import 'package:submission_fluter_dicoding/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Submission Dicoding Flutter',
      theme: ThemeData(
        fontFamily: 'Poppins'
      ),
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
