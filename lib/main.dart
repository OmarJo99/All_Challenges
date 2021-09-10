import 'package:Challenges/Challenge%201/Neumorphic_mode/ch_login.dart';
import 'package:Challenges/Challenge%202/Cloud_Animation.dart';
import 'package:Challenges/Challenge%204/Arr.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CH_login_Neumorphic(),
    );
  }
}
