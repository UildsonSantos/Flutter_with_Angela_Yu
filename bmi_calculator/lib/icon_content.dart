import 'package:flutter/material.dart';

const labelTextStyle = TextStyle(
  fontSize: 20.0,
  color: Color(0xFF8D8E98),
);

class IconContent extends StatelessWidget {
  final IconData icon;
  final String label;

  const IconContent({
    Key? key,
    required this.icon,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        Text(
          label,
          style: labelTextStyle,
        )
      ],
    );
  }
}
