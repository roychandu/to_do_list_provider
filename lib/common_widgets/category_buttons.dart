import 'package:flutter/material.dart';
import 'package:to_do_list_provider/common_widgets/color_extension.dart';

class CategoryButtons extends StatefulWidget {
  Color boxColor;
  Image image;
  String label;
  Function(BuildContext context) onpress;
  CategoryButtons({
    super.key,
    required this.image,
    required this.label,
    required this.onpress,
    required this.boxColor,
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
          onTap: () => widget.onpress(context),
          child: Container(
            height: sizeheight * 0.08,
            width: sizeWidth * 0.17,
            child: widget.image,
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
