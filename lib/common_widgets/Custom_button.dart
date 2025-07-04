import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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

class CustomTextButton extends StatefulWidget {
  String text;
  VoidCallback onPressed;
  CustomTextButton({super.key, required this.text, required this.onPressed});

  @override
  State<CustomTextButton> createState() => _CustomTextButtonState();
}

class _CustomTextButtonState extends State<CustomTextButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: widget.onPressed,
      child: Text(
        widget.text,
        style: TextStyle(color: Colors.white, fontSize: 16),
      ),
    );
  }
}

class CustomOutlinedButton extends StatelessWidget {
  final Image image;
  final String text;
  final VoidCallback onPressed;
  const CustomOutlinedButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: onPressed,
      label: Text(text, style: TextStyle(color: Colors.white)),
      icon: image,
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: Color(0xff8875FF)),
      ),
    );
  }
}
