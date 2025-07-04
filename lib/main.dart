import 'package:flutter/material.dart';
import 'package:flutter_tp4/widgets/bottom_nav.dart';
import 'package:flutter_tp4/widgets/course/course_card.dart';
import 'package:flutter_tp4/widgets/course/feature_course_section.dart';
import 'package:flutter_tp4/widgets/hero_section.dart';
import 'package:flutter_tp4/widgets/learning_feature_section.dart';
import 'package:flutter_tp4/widgets/list_teachers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Bruh',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        fontFamily: 'Ubuntu',
      ),
      home: const MyHomePage(title: 'Flutter Bruh Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
                        const HeroSection(),
                        const SizedBox(height: 24),
                        const LearningFeatureSection(),
                        const SizedBox(height: 20),
                        const FeatureCourseSection(),
                        const SizedBox(height: 32),

                        const Text(
                          'Meet Our Teachers',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 12),
                        const ListTeachers(),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 100),
              ],
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
