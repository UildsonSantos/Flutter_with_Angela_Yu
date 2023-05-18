import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.orange.shade900,
        appBar: AppBar(
          backgroundColor: Colors.orange.shade900,
          title: const Text('Dice'),
        ),
        body: const DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 3;

  void changeLeftDiceFace(){
    setState(() {
      leftDiceNumber = Random().nextInt(6) +1;
    });
  }
  void changeRightDiceFace(){
    setState(() {
      rightDiceNumber = Random().nextInt(6) +1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
      children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                changeLeftDiceFace();
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                changeRightDiceFace();
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
      ],
    ),
        ));
  }
}
