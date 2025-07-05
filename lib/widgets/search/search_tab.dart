import 'package:flutter/material.dart';
import 'package:flutter_tp4/widgets/tab/feature_course_tab_item.dart';

class SearchTab extends StatefulWidget {
  const SearchTab({super.key});

  @override
  State<StatefulWidget> createState() {
    return _SearchTabState();
  }
}

class _SearchTabState extends State<SearchTab> {
  int _activeTab = 0;
  List<String> tabItems = [
    'All(43)',
    'Courses(22)',
    'Project(3)',
    'session(3)',
    'Lecturers(3)',
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
                isPro: i == 3,
              ),
            ),
          },
        ],
      ),
    );
  }
}
