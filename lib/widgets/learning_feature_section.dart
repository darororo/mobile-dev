import 'package:flutter/material.dart';

class LearningFeatureSection extends StatelessWidget {
  const LearningFeatureSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<List<String>> featureList = [
      ['Expert Instructors', 'assets/expert_instructors.png'],
      ['Flexible Learning', 'assets/flexible_learning.png'],
      ['Hands-On Learning', 'assets/hands_on_learning.png'],
    ];

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        for (int i = 0; i < featureList.length; i++) ...{
          Card(
            color: Color.fromRGBO(222, 233, 255, 1),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Image.asset(featureList[i][1]),
                  const SizedBox(height: 8),
                  Text(
                    featureList[i][0],
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      color: Color.fromRGBO(255, 132, 2, 1),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
        },
      ],
    );
  }
}
