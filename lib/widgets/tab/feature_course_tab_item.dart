import 'package:flutter/material.dart';

class FeatureCourseTabItem extends StatelessWidget {
  const FeatureCourseTabItem({
    super.key,
    required this.text,
    this.textColor,
    this.indicatorColor,
    this.isPro = false,
  });

  final String text;
  final Color? textColor;
  final Color? indicatorColor;
  final bool isPro;

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
      child:
          !isPro
              ? Text(
                text,
                style: TextStyle(
                  color: textColor ?? Color.fromRGBO(123, 123, 123, 1),
                  fontSize: 16,
                ),
              )
              : Row(
                spacing: 4,
                children: [
                  Text(
                    'PRO',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    text,
                    style: TextStyle(
                      fontSize: 16,
                      color: textColor ?? Color.fromRGBO(123, 123, 123, 1),
                    ),
                  ),
                ],
              ),
    );
  }
}
