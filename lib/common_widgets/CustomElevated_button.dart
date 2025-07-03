import 'package:flutter/material.dart';

class CustomelevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const CustomelevatedButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xff8875FF),
        foregroundColor: Colors.white,
      ),
      child: Text(text),
    );
  }
}
