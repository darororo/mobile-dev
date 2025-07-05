import 'package:flutter/material.dart';
import 'package:flutter_tp4/models/course_model.dart';
import 'package:flutter_tp4/widgets/bottom_nav.dart';
import 'package:flutter_tp4/widgets/course/feature_course_section.dart';
import 'package:flutter_tp4/widgets/explore/explore_section.dart';
import 'package:flutter_tp4/widgets/explore/explore_widget.dart';
import 'package:flutter_tp4/widgets/footer_section.dart';
import 'package:flutter_tp4/widgets/search/search_result.dart';
import 'package:flutter_tp4/widgets/search/search_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _searchController = TextEditingController();
  bool _showResult = false;
  List<CourseModel> filteredCourses = [];
  List<CourseModel> courses = [
    CourseModel(name: 'Java', description: "Introduction to Java Programming"),

    for (int i = 0; i < 5; i++) ...{
      CourseModel(
        name: 'Computer Network',
        description:
            "A network is a system that links computers and devices to share resources and exchange data, enabling communication and access to shared services, whether locally",
      ),
    },
  ];

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.white,
        leading: Image.asset('assets/logo_title.png'),
        leadingWidth: MediaQuery.sizeOf(context).width * 0.4,
        actions: [
          IconButton(
            onPressed: () => {},
            icon: Icon(Icons.search, color: Colors.blueAccent, size: 24),
          ),
          IconButton(
            onPressed: () => {},
            icon: Icon(Icons.person, color: Colors.blueAccent, size: 24),
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Stack(
          children: [
            ListView(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Column(
                      children: [
                        const SizedBox(height: 100),

                        _showResult
                            ? SearchResult(courseModels: filteredCourses)
                            : const ExploreSection(),
                        const SizedBox(height: 40),
                        const FooterSection(),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 80),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SearchBar(
                controller: _searchController,
                hintText: 'Find your interested courses',
                leading: Icon(Icons.search),
                trailing: [
                  IconButton(
                    icon: Icon(Icons.cancel_outlined),
                    onPressed: () {
                      _searchController.clear();
                      setState(() {
                        _showResult = false;
                      });
                    },
                  ),
                ],
                padding: WidgetStatePropertyAll(
                  EdgeInsets.symmetric(horizontal: 16),
                ),
                onSubmitted:
                    (value) => setState(() {
                      filteredCourses =
                          courses.where((c) {
                            bool descriptionMatched = c.description
                                .toLowerCase()
                                .contains(_searchController.text.toLowerCase());
                            bool titleMatched = c.name.toLowerCase().contains(
                              _searchController.text.toLowerCase(),
                            );

                            return descriptionMatched || titleMatched;
                          }).toList();
                      _showResult = true;
                    }),
              ),
            ),

            // Bottom Bar
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(height: 60, child: const BottomNav()),
            ),
          ],
        ),
      ),
    );
  }
}
