import 'package:flutter/material.dart';
import 'package:submission_fluter_dicoding/screen/main_screen.dart';

void main() {
  runApp(MyApp());
}

//
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Submission Dicoding Flutter',
      theme: ThemeData(fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
