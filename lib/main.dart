import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BallPage(),
    ),
  );
}

class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        title: const Text(
          'ASK ME ANYTHING',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  @override
  var ballNumber = 2;

  void changeBall(){
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  Widget build(BuildContext context) {

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: GestureDetector(
          onTap: (){
            changeBall();
            print('ball number is ${ballNumber}');
          },
          child: Image.asset('images/ball${ballNumber}.png'),
        ),
      ),
    );
  }
}
