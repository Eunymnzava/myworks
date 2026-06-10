import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final int minLines;
  final int maxLines;
  final TextInputType keyboardType;
  final IconData? icon;



  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.minLines = 1, // Default to a single line field if not specified
    this.maxLines = 1, 
    this.keyboardType = TextInputType.text,
    this.icon,

  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      minLines: minLines,
      maxLines: maxLines,
      keyboardType: keyboardType,
      style: const TextStyle(fontSize: 16, color: Colors.black87),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: const Color.fromARGB(255, 169, 167, 167).withOpacity(0.7),
          fontSize: 15,
        ),
      prefixIcon: icon != null ? Icon(icon, color: const Color.fromARGB(255, 10, 37, 170).withOpacity(0.7), size: 22,) : null,

        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.all(16),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey.shade300, width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: Color.fromRGBO(9, 15, 128, 1),
            width: 1.5,
          ),
        ),
      ),
    );
  }
}