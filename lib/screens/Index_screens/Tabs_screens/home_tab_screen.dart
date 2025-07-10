import 'package:flutter/material.dart';
import 'package:to_do_list_provider/common_widgets/color_extension.dart';

class HomeTabScreen extends StatefulWidget {
  final List<String> Tasks;
  const HomeTabScreen({super.key, required this.Tasks});

  @override
  State<HomeTabScreen> createState() => _HomeTabScreenState();
}

class _HomeTabScreenState extends State<HomeTabScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: widget.Tasks.isEmpty
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
                itemCount: widget.Tasks.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(height: 400, color: TColor.primary);
                        },
                      );
                    },
                    child: Center(
                      child: Text(
                        widget.Tasks[index],
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ),
                  );
                },
              ),
      ),
    );
  }
}
