import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:to_do_list_provider/common_widgets/color_extension.dart';

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
        appBar: AppBar(title: Text('Calendar'), centerTitle: true),
        body: widget.celenderTask.isEmpty
            ? Column(children: [Container(child: Text('data'))])
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
