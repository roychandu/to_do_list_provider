import 'package:flutter/material.dart';

class CategoryButtons extends StatefulWidget {
  Color boxColor, labelColor;
  IconData iconData;
  String label;
  VoidCallback onpress;
  CategoryButtons({
    super.key,
    required this.iconData,
    required this.label,
    required this.onpress,
    required this.boxColor,
    required this.labelColor,
  });

  @override
  State<CategoryButtons> createState() => _CategoryButtonsState();
}

class _CategoryButtonsState extends State<CategoryButtons> {
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        GestureDetector(
          onTap: widget.onpress,
          child: Container(
            child: Icon(widget.iconData),
            decoration: BoxDecoration(color: widget.boxColor),
          ),
        ),
        Text(widget.label, style: TextStyle(color: widget.labelColor)),
      ],
    );
  }
}
