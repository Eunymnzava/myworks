import 'package:flutter/material.dart';
import '/widgets/app_text.dart';

class ResponsiveButton extends StatelessWidget {
  final bool isResponsive;
  final String text;
  final double width;

  const ResponsiveButton({
    Key? key,
    this.width = 120,
    this.isResponsive = false,
    this.text = "Button",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: isResponsive ? double.maxFinite : width,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: Color.fromARGB(172, 7, 20, 117),
      ),
      child: Row(
        mainAxisAlignment: isResponsive
            ? MainAxisAlignment.spaceBetween
            : MainAxisAlignment.center,
        children: [
          isResponsive
              ? Container(
                  margin: const EdgeInsets.only(left: 28),
                )
              : Container(),
          AppText(
            text: text,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
