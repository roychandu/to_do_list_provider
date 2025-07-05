import 'package:flutter/material.dart';

class CustomInputText extends StatelessWidget {
  String text, hint;
  TextEditingController controller = TextEditingController();
  CustomInputText({
    super.key,
    required this.text,
    required this.hint,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text, style: TextStyle(color: Colors.white, fontSize: 18)),
        SizedBox(height: 10),
        TextField(
          style: TextStyle(color: Colors.white),
          controller: controller,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
            labelText: hint,
            labelStyle: TextStyle(color: Colors.blueGrey, fontSize: 16),
            contentPadding: EdgeInsets.only(left: 20),
          ),
        ),
      ],
    );
  }
}

class CustomInputTextWithVisiable extends StatelessWidget {
  String text, hint;
  TextEditingController controller;
  CustomInputTextWithVisiable({
    super.key,
    required this.text,
    required this.hint,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    ValueNotifier<bool> toggleVisiable = ValueNotifier(false);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text, style: TextStyle(color: Colors.white, fontSize: 18)),
        SizedBox(height: 10),
        ValueListenableBuilder(
          valueListenable: toggleVisiable,
          builder: (context, value, child) {
            return TextField(
              obscureText: !value,
              controller: controller,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                suffixIcon: GestureDetector(
                  onTap: () {
                    toggleVisiable.value = !toggleVisiable.value;
                  },
                  child: Icon(value ? Icons.visibility : Icons.visibility_off),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                labelText: hint,
                labelStyle: TextStyle(color: Colors.blueGrey, fontSize: 16),
                contentPadding: EdgeInsets.only(left: 20),
              ),
            );
          },
        ),
      ],
    );
  }
}
