import 'package:flutter/material.dart';
import 'package:flutter_tp4/widgets/course/course_card.dart';
import 'package:flutter_tp4/widgets/tab/feature_course_tab.dart';

class FeatureCourseSection extends StatelessWidget {
  const FeatureCourseSection({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
            ),
          ],
        ),
        const SizedBox(height: 10),

        // Course List
        _buildCourseList(context),

        const SizedBox(height: 16),
        _buildCircleIndicator(context),
      ],
    );
  }

  Row _buildCircleIndicator(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 4,
      children: [
        Container(
          width: 6,
          height: 6,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.orange,
          ),
        ),

        for (int i = 0; i < 3; i++) ...{
          Container(
            width: 6,
            height: 6,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color.fromRGBO(216, 216, 216, 1),
            ),
          ),
        },
      ],
    );
  }

  SingleChildScrollView _buildCourseList(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 0; i < 5; i++) ...{
            SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.55,
              child: const CourseCard(),
            ),
          },
        ],
      ),
    );
  }
}
