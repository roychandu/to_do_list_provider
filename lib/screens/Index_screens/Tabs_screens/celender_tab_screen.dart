import 'package:flutter/material.dart';

class CelenderTabScreen extends StatefulWidget {
  const CelenderTabScreen({super.key});

  @override
  State<CelenderTabScreen> createState() => _CelenderTabScreenState();
}

class _CelenderTabScreenState extends State<CelenderTabScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Text(
            'Celender',
            style: TextStyle(fontSize: 40, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
