import 'package:flutter/material.dart';

class FocuseTabScreen extends StatefulWidget {
  const FocuseTabScreen({super.key});

  @override
  State<FocuseTabScreen> createState() => _FocuseTabScreenState();
}

class _FocuseTabScreenState extends State<FocuseTabScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Text(
            'focuse',
            style: TextStyle(fontSize: 40, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
