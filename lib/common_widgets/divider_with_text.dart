import 'package:flutter/material.dart';

class DividerWithText extends StatelessWidget {
  const DividerWithText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Expanded(child: Divider()),
        Text("OR", style: TextStyle(color: Colors.blueGrey)),
        Expanded(child: Divider()),
      ],
    );
  }
}
