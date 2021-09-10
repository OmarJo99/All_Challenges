import 'package:Challenges/Challenge%204/Arr.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class Cloud extends StatefulWidget {
  Cloud({Key? key}) : super(key: key);

  @override
  CloudState createState() => CloudState();
}

class CloudState extends State<Cloud> with SingleTickerProviderStateMixin {
  late final AnimationController animationController =
      AnimationController(duration: Duration(seconds: 8), vsync: this)
        ..repeat(reverse: true);
  late Animation<Offset> animation =
      Tween(begin: Offset(-1, 0), end: Offset(1, 0))
          .animate(animationController);
  late Animation<Offset> animation2 =
      Tween(begin: Offset(1, 0), end: Offset(-2, 0))
          .animate(animationController);
  late Animation<Offset> animation3 =
      Tween(begin: Offset(0, 0), end: Offset(1, 0))
          .animate(animationController);
  late Animation<Offset> animation4 =
      Tween(begin: Offset(0, 0), end: Offset(-1, 0))
          .animate(animationController);

  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SlideTransition(
            position: animation,
            child: Stack(
              fit: StackFit.passthrough,
              children: [
                Center(
                  child: Image.asset(
                    'assets/Images/Cloud.png',
                    width: 1280,
                    height: 150,
                  ),
                ),
              ],
            ),
          ),
          SlideTransition(
            position: animation2,
            child: Stack(
              fit: StackFit.passthrough,
              children: [
                Center(
                  child: Image.asset(
                    'assets/Images/Cloud.png',
                    width: 780,
                    height: 100,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            CircleAvatar(
                child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back),
            )),
            SizedBox(width: 10,),
            CircleAvatar(
                child: IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder:(context)=>Array()));
              },
              icon: Icon(Icons.arrow_forward),
            ))
          ]),
          SlideTransition(
            position: animation3,
            child: Stack(
              fit: StackFit.passthrough,
              children: [
                Center(
                  child: Image.asset(
                    'assets/Images/Cloud.png',
                    width: 780,
                    height: 100,
                  ),
                ),
              ],
            ),
          ),
          SlideTransition(
            position: animation4,
            child: Stack(
              fit: StackFit.passthrough,
              children: [
                Center(
                  child: Image.asset(
                    'assets/Images/Cloud.png',
                    width: 780,
                    height: 200,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
