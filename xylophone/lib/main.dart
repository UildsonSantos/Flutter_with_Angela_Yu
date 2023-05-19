import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatefulWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  @override
  State<XylophoneApp> createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  AudioCache audioCache = AudioCache();
  AudioPlayer advancedPlayer = AudioPlayer();

  void playSound(int soundNumber) async {
    final file = await audioCache.loadAsFile('note$soundNumber.wav');
    final bytes = await file.readAsBytes();
    audioCache.playBytes(bytes);
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              TextButton(
                onPressed: () {
                  playSound(1);
                },
                child: Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.red,
                ),
              ),
              TextButton(
                onPressed: () {
                  playSound(2);
                },
                child: Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.orange,
                ),
              ),
              TextButton(
                onPressed: () {
                  playSound(3);
                },
                child: Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.yellow,
                ),
              ),
              TextButton(
                onPressed: () {
                  playSound(4);
                },
                child: Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.green,
                ),
              ),
              TextButton(
                onPressed: () {
                  playSound(5);
                },
                child: Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.teal,
                ),
              ),
              TextButton(
                onPressed: () {
                  playSound(6);
                },
                child: Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.blue,
                ),
              ),
              TextButton(
                onPressed: () {
                  playSound(7);
                },
                child: Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.purple,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
