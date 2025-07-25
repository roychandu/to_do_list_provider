import 'package:flutter/material.dart';
import 'package:to_do_list_provider/common_widgets/color_extension.dart';

class CategoryButtons extends StatefulWidget {
  Color boxColor, iconColor;
  IconData iconData;
  String label;
  VoidCallback onpress;
  CategoryButtons({
    super.key,
    required this.iconData,
    required this.label,
    required this.onpress,
    required this.boxColor,
    required this.iconColor,
  });

  @override
  State<CategoryButtons> createState() => _CategoryButtonsState();
}

class _CategoryButtonsState extends State<CategoryButtons> {
  @override
  Widget build(BuildContext context) {
    double sizeheight = MediaQuery.of(context).size.height;
    double sizeWidth = MediaQuery.of(context).size.width;
    return Column(
      spacing: 10,
      children: [
        GestureDetector(
          onTap: widget.onpress,
          child: Container(
            height: sizeheight * 0.065,
            width: sizeWidth * 0.17,
            child: Icon(widget.iconData, size: 35, color: widget.iconColor),
            decoration: BoxDecoration(
              color: widget.boxColor,
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        Text(widget.label, style: TextStyle(color: TColor.primaryText)),
      ],
    );
  }
}
