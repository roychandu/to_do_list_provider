import 'package:flutter/material.dart';

class HomeTabScreen extends StatefulWidget {
  const HomeTabScreen({super.key});

  @override
  State<HomeTabScreen> createState() => _HomeTabScreenState();
}

class _HomeTabScreenState extends State<HomeTabScreen> {
  List<String> Tasks = [];
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Tasks.isEmpty
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
                itemCount: Tasks.length,
                itemBuilder: (context, index) {
                  return Center(
                    child: Text(
                      Tasks[index],
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  );
                },
              ),
      ),
    );
  }
}
