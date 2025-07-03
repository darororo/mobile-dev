import 'package:flutter/material.dart';

class FeatureCourseTabItem extends StatelessWidget {
  const FeatureCourseTabItem({
    super.key,
    required this.text,
    this.textColor,
    this.indicatorColor,
  });

  final String text;
  final Color? textColor;
  final Color? indicatorColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        bottom: 2,
        left: 8,
        right: 8,
      ), // spacing between text and underline
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 2.0, color: indicatorColor ?? Colors.grey),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textColor ?? Color.fromRGBO(123, 123, 123, 1),
          fontSize: 16,
        ),
      ),
    );
  }
}
