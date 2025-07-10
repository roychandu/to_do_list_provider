import 'package:flutter/material.dart';

class CelenderTabScreen extends StatefulWidget {
  final List<String> celenderTask;
  const CelenderTabScreen({super.key, required this.celenderTask});

  @override
  State<CelenderTabScreen> createState() => _CelenderTabScreenState();
}

class _CelenderTabScreenState extends State<CelenderTabScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: widget.celenderTask.isEmpty
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(child: Image.asset('assets/empty_task.png')),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: 'What do you want to do today?\n',
                      style: TextStyle(fontSize: screenWidth * .06, height: 2),
                      children: [
                        TextSpan(
                          text: 'Tab + to add your tasks',
                          style: TextStyle(fontSize: screenWidth * 0.04),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            : ListView.builder(
                itemCount: widget.celenderTask.length,
                itemBuilder: (context, index) {
                  return Center(
                    child: Text(
                      widget.celenderTask[index],
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  );
                },
              ),
      ),
    );
  }
}
