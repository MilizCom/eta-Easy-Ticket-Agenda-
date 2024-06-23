import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller; // Add controller property
  final String initialValue;
  final String hintText;
  final TextAlign textAlign;
  final bool obscureText;
  final TextInputType keyboardType;
  final Function(String)? onChanged;
  final EdgeInsetsGeometry margin;

  const CustomTextField({
    Key? key,
    this.controller, // Initialize controller property
    required this.initialValue,
    required this.hintText,
    this.textAlign = TextAlign.start,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.onChanged,
    this.margin = const EdgeInsets.only(bottom: 23),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: 248,
      height: 40,
      child: TextFormField(
        controller: controller, // Use controller here
        initialValue: initialValue,
        textAlign: textAlign,
        obscureText: obscureText,
        keyboardType: keyboardType,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hintText,
          contentPadding: EdgeInsets.symmetric(
            vertical: 20.0,
            horizontal: 20.0,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide(
              color: Colors.black,
              width: 4.0,
            ),
          ),
        ),
      ),
    );
  }
}
