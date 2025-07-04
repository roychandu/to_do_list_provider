import 'package:flutter/material.dart';

class CustomInputText extends StatelessWidget {
  String text, hint;
  CustomInputText({super.key, required this.text, required this.hint});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text, style: TextStyle(color: Colors.white, fontSize: 18)),
        SizedBox(height: 10),
        TextField(
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
            labelText: text,
            labelStyle: TextStyle(color: Colors.blueGrey, fontSize: 16),
            contentPadding: EdgeInsets.only(left: 20),
          ),
        ),
      ],
    );
  }
}
