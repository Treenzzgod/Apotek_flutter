import 'package:loginpage/ListProduct/ListProduct_screen.dart';
import 'package:loginpage/ListProduct/detail_product.dart';
import 'package:loginpage/pages/cart.dart';
import 'package:loginpage/pages/checkout.dart';
import 'package:loginpage/pages/pages.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Checkout(),
      ),
    );
  }
}
