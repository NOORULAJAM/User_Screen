// @dart=2.9
import 'package:flutter/material.dart';
import 'package:user_screen/log_in.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        debugShowCheckedModeBanner: false, home: Scaffold(body:Loginpage()));
  }
}
