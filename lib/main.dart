import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: BallPage(),
    ),
  );
}

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text('Ask Me Anything'),
      ),
      backgroundColor: Colors.redAccent,
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: TextButton(
        child: Image.network(_returnUrl(ballNumber)),
        onPressed: () {
          setState(() {
            ballNumber = _randomNum();
          });
        },
      )),
    );
  }
}

int _randomNum() {
  int num = Random().nextInt(5) + 1;
  return num;
}

String _returnUrl(int ballNumber) {
  //int num = _randomNum();
  return 'https://raw.githubusercontent.com/londonappbrewery/magic-8-ball-flutter/master/images/ball$ballNumber.png';
}
