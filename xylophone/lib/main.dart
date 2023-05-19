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

  void playSound() async {
    final file = await audioCache.loadAsFile('note1.wav');
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
          child: TextButton(
            onPressed: () {
              playSound();
            },
            child: Container(
              width: 100.0,
              height: 100.0,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
