import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Magic Ball"),
          backgroundColor: Colors.green,
        ),
        body: magicBallLayout(),
      ),
    );
  }
}

class magicBallLayout extends StatefulWidget {
  const magicBallLayout({super.key});

  @override
  State<magicBallLayout> createState() => _magicBallLayoutState();
}

class _magicBallLayoutState extends State<magicBallLayout> {
  int ballNumber = 1;
  void ChangeNumber(){
    setState(() {
      ballNumber = Random().nextInt(4)+1;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: TextButton(
            onPressed:(){
              ChangeNumber();
            },
          child: Image.asset('images/ball$ballNumber.png'),
        ),
      ),
    );
  }
}



