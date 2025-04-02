import 'package:flutter/material.dart';

class FilledTextfield extends StatelessWidget {
  final String hintText;
  final bool showHideIcon;

  const FilledTextfield({
    super.key,
    required this.hintText,
    this.showHideIcon = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(style: BorderStyle.none, width: 0),
        ),
        suffixIcon: showHideIcon ? Icon(Icons.remove_red_eye_outlined) : null,
        hintText: hintText,
        filled: true,
        fillColor: Color.fromARGB(255, 241, 241, 245),
        contentPadding: EdgeInsets.fromLTRB(16, 20, 20, 16),
      ),
    );
  }
}
