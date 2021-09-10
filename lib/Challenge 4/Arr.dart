import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Array extends StatefulWidget {
  Array({Key? key}) : super(key: key);

  @override
  _ArrayState createState() => _ArrayState();
}

class _ArrayState extends State<Array> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Column(
          children: [
            Text(
              'Challenge 4',
              style: TextStyle(fontSize: 35),
            ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Center(
                  child: Image.asset(
                    'assets/Images/4.png',
                    width: 700,
                    height: 500,
                    fit: BoxFit.cover,
                  ),
                )),
          ],
        ));
  }
}
