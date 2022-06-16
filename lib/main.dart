import 'package:loginpage/ListProduct/Categories_list.dart';
import 'package:flutter/material.dart';
import 'package:loginpage/ListProduct/ListProduct_screen.dart';
import 'package:loginpage/ListProduct/ListProduct_screen2.dart';
import 'package:loginpage/pages/LoginScreen.dart';
import 'package:loginpage/pages/pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Category(),
      ),
    );
  }
}
