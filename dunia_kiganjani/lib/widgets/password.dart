import 'package:flutter/material.dart';

class CustomPasswordField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;

  const CustomPasswordField({
    super.key,
    required this.controller,
    this.hintText = "Enter password", // Default placeholder
  });

  @override
  State<CustomPasswordField> createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {
  // Local state to track whether the password text is hidden or visible
  bool _isObscured = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: _isObscured, // 👈 True hides characters as dots, False reveals them
      maxLines: 1, // Passwords must always be a single line
      style: const TextStyle(fontSize: 16, color: Colors.black87),
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: TextStyle(
          color: const Color.fromARGB(255, 165, 165, 165).withOpacity(0.7),
          fontSize: 15,
        ),
        
        // 🔒 The Lock Icon at the beginning
        prefixIcon: const Icon(
          Icons.lock_outline_rounded, 
          color: Color.fromRGBO(9, 15, 128, 0.7), 
          size: 22,
        ),
        
        // 👁️ The Visibility Icon at the end
        suffixIcon: IconButton(
          icon: Icon(
            _isObscured ? Icons.visibility_off_outlined : Icons.visibility_outlined,
            color: Colors.grey.shade600,
            size: 22,
          ),
          onPressed: () {
            // Toggles the visibility state and rebuilds the field icon/text view
            setState(() {
              _isObscured = !_isObscured;
            });
          },
        ),
        
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