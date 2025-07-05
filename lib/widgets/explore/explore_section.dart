import 'package:flutter/material.dart';
import 'package:flutter_tp4/widgets/course/feature_course_section.dart';
import 'package:flutter_tp4/widgets/explore/explore_widget.dart';

class ExploreSection extends StatelessWidget {
  const ExploreSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ExploreWidget(title: 'Explore your favorite subjects!'),
        const SizedBox(height: 40),
        const ExploreWidget(title: 'Build your competency with us!'),

        const SizedBox(height: 40),
        const ExploreWidget(title: 'Best recommended for you!'),

        const SizedBox(height: 60),
        const FeatureCourseSection(title: "Cybersecurity"),
        const SizedBox(height: 32),
        const FeatureCourseSection(title: "Network Administrator"),
        const SizedBox(height: 32),
        const FeatureCourseSection(title: "Cryptography"),
        const SizedBox(height: 32),
      ],
    );
  }
}
