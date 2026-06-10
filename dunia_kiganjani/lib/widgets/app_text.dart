import 'package:flutter/material.dart';


class AppText extends StatelessWidget {
  final double size;
  final FontWeight? fontWeight;
  final String text;
  final Color color;
  final double? lineHeight;
  
  const AppText(
      {Key? key,
      this.size = 16,
      required this.text,
      this.fontWeight,
      this.color = Colors.black54, this.lineHeight,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: fontWeight,
        height: lineHeight,
      ),
    );
  }
}
