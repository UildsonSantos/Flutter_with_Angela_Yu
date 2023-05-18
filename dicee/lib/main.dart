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
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      children: [
        Expanded(
          child: FlatButton(
            onPressed: () {
              print('left');
            },
            child: Image.asset('images/dice1.png'),
          ),
        ),
        Expanded(
          child: FlatButton(
            onPressed: () {
              print('right');
            },
            child: Image.asset('images/dice2.png'),
          ),
        ),
      ],
    ));
  }
}
