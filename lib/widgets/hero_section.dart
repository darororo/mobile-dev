import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          // width: MediaQuery.sizeOf(context).width * 0.90,
          child: Text.rich(
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              fontFamily: 'InriaSerif',
            ),
            TextSpan(
              text: 'Unlock Your Potential with ',
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(
                  text: 'Worktency',
                  style: TextStyle(color: Colors.orange),
                ),
              ],
            ),
          ),
        ),

        SizedBox(height: 20),
        // Hero Description
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.8,
            child: const Text(
              'Discover industry-leading courses designed to equip you with real-world skills. Join our community and start your journey to success today.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        SizedBox(height: 20),

        Image.asset('assets/logo_hero.png'),

        //Explore Courses
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.menu_book, color: Colors.blue),
            SizedBox(width: 8),
            Text('Explore Courses', style: TextStyle(color: Colors.blue)),
          ],
        ),

        SizedBox(height: 12),

        // Join as educator button
        DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.circular(360),
          ),
          child: SizedBox(
            width: 300,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.school, color: Colors.white),
                  SizedBox(width: 8),
                  Text(
                    'Join as an educator',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
