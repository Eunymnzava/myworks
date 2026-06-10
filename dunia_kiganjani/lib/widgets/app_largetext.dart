import 'package:flutter/material.dart';
//import 'package:flutter/cupertino.dart';

class AppLargeText extends StatelessWidget {
  final double size;
  final String text;
  final Color color;
  const AppLargeText({Key? key, this.size = 35, required this.text, this.color=Colors.white}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: FontWeight.bold,
      ),
      );
   }
}
