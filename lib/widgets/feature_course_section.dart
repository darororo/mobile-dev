import 'package:flutter/material.dart';
import 'package:flutter_tp4/widgets/tab/feature_course_tab.dart';

class FeatureCourseSection extends StatelessWidget {
  const FeatureCourseSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [FeatureCourseTab()]);
  }
}
