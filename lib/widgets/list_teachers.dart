import 'package:flutter/material.dart';

class ListTeachers extends StatelessWidget {
  const ListTeachers({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> teacherData = [
      'assets/teach_dona.png',
      'assets/teach_tin.png',
      'assets/teach_pisey.png',
    ];
    return Row(
      spacing: 2,
      children: [
        for (String teach in teacherData) ...{
          Expanded(child: Image.asset(teach)),
        },
      ],
    );
  }
}
