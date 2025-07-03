import 'package:flutter/material.dart';
import 'package:flutter_tp4/widgets/tab/feature_course_tab_item.dart';

class FeatureCourseTab extends StatefulWidget {
  const FeatureCourseTab({super.key});

  @override
  State<StatefulWidget> createState() {
    return _FeatureCourseTabState();
  }
}

class _FeatureCourseTabState extends State<FeatureCourseTab> {
  int _activeTab = 0;
  List<String> tabItems = [
    'Artificial Intelligent',
    'Machine Learning',
    'Self Development',
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 0; i < tabItems.length; i++) ...{
            InkWell(
              onTap: () {
                setState(() {
                  _activeTab = i;
                });
              },
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              child: FeatureCourseTabItem(
                text: tabItems[i],
                textColor: _activeTab == i ? Colors.black : null,
                indicatorColor:
                    _activeTab == i ? Color.fromRGBO(255, 140, 18, 1) : null,
              ),
            ),
          },
        ],
      ),
    );
  }
}
