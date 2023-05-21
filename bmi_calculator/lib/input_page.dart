import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: const [
                Expanded(child: Placeholder()),
                Expanded(child: Placeholder()),
              ],
            ),
          ),
          const Expanded(child: Placeholder()),
          Expanded(
            child: Row(
              children: const [
                Expanded(child: Placeholder()),
                Expanded(child: Placeholder()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
