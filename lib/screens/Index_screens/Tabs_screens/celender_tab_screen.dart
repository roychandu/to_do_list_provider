import 'package:flutter/material.dart';
import 'package:to_do_list_provider/common_widgets/color_extension.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:intl/intl.dart';

class CelenderTabScreen extends StatefulWidget {
  final List<String> celenderTask;
  const CelenderTabScreen({super.key, required this.celenderTask});

  @override
  State<CelenderTabScreen> createState() => _CelenderTabScreenState();
}

class _CelenderTabScreenState extends State<CelenderTabScreen> {
  DateTime _selectedDate = DateTime.now();
  DateTime _focusedMonth = DateTime(DateTime.now().year, DateTime.now().month);

  void _changeMonth(int offset) {
    setState(() {
      _focusedMonth = DateTime(
        _focusedMonth.year,
        _focusedMonth.month + offset,
      );
      _selectedDate = _focusedMonth;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    String monthYear = DateFormat(
      'MMMM \n yyyy',
    ).format(_selectedDate).toUpperCase();

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text('Calendar'), centerTitle: true),
        body: widget.celenderTask.isEmpty
            ? Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () => _changeMonth(-1),
                        child: const Icon(
                          Icons.arrow_back_ios,
                          size: 16,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        monthYear,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      GestureDetector(
                        onTap: () => _changeMonth(1),
                        child: const Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: screenHeight * 0.1,
                    decoration: BoxDecoration(
                      color: TColor.primaryTextBackground,
                    ),
                    child: DatePicker(
                      _focusedMonth,
                      initialSelectedDate: DateTime.now(),
                      selectionColor: TColor.secondaryText,
                      selectedTextColor: Colors.white,
                      dateTextStyle: TextStyle(color: TColor.primaryText),
                      dayTextStyle: TextStyle(color: TColor.primaryText),
                      monthTextStyle: TextStyle(color: TColor.primaryText),
                      onDateChange: (date) {
                        setState(() {
                          _selectedDate = date;
                        });
                      },
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
