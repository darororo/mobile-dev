import 'package:flutter/material.dart';
import 'package:flutter_tp4/models/course_model.dart';
import 'package:flutter_tp4/widgets/search/search_tab.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({super.key, required this.courseModels});

  final List<CourseModel> courseModels;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchTab(),
        SizedBox(height: 20),

        for (CourseModel course in courseModels) ...{
          SizedBox(height: 8),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Color.fromRGBO(239, 239, 239, 1),
                width: 2,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: ListTile(
              leading: Image.asset('assets/steam.png'),
              title: Text(
                course.name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              subtitle: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  course.description.length < 50
                      ? Text(course.description)
                      : RichText(
                        text: TextSpan(
                          style:
                              DefaultTextStyle.of(
                                context,
                              ).style, // <-- inherit from theme
                          children: [
                            TextSpan(text: course.description),
                            TextSpan(text: '   '),
                            TextSpan(
                              text: 'See more...',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.orange,
                                fontWeight: FontWeight.w400,
                                color: Colors.orange,
                              ),
                            ),
                          ],
                        ),
                      ),
                  SizedBox(height: 4),
                  Row(
                    spacing: 2,
                    children: [
                      Icon(
                        Icons.star_half_rounded,
                        color: Color.fromRGBO(80, 80, 80, 1),
                        size: 16,
                      ),
                      Text('កំរិតដំបូង'),
                      SizedBox(width: 4),
                      Icon(
                        Icons.groups,
                        color: Color.fromRGBO(80, 80, 80, 1),
                        size: 16,
                      ),
                      Text('99 នាក់បានរៀន'),
                    ],
                  ),
                ],
              ),
              isThreeLine: true,
            ),
          ),
        },
        SizedBox(height: 20),
        Text(
          'Load More...',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
