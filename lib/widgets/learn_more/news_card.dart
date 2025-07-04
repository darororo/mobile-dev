import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({super.key});

  @override
  Widget build(BuildContext context) {
    String content =
        "\"Machine learning and AI are the engines driving the technological revolution of our time, transforming the way we work, live, and innovate\"";

    return Row(
      spacing: 8,
      children: [
        Expanded(
          child: Container(
            width: 180,
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                image: AssetImage('assets/course.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Flexible(
          flex: 1,
          child: Column(
            children: [
              Text(
                content,
                style: TextStyle(
                  color: Color.fromRGBO(52, 52, 52, 1),
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
              SizedBox(height: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Dr. Valy Dona',
                    style: TextStyle(
                      color: Color.fromRGBO(52, 52, 52, 1),
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                    ),
                  ),
                  Text(
                    '| Professor @ITC, Cofounder @ Worktency',
                    style: TextStyle(
                      color: Color.fromRGBO(123, 123, 123, 1),
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                    ),
                  ),

                  SizedBox(height: 8),

                  Row(
                    spacing: 2,
                    children: [
                      Icon(
                        Icons.leaderboard_rounded,
                        color: Color.fromRGBO(22, 79, 137, 1),
                        size: 10,
                      ),
                      Text(
                        'Machine Learning',
                        style: TextStyle(
                          color: Color.fromRGBO(22, 79, 137, 1),
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),

                  Row(
                    spacing: 2,
                    children: [
                      Icon(
                        Icons.smart_toy_sharp,
                        color: Color.fromRGBO(22, 79, 137, 1),
                        size: 10,
                      ),
                      Text(
                        'Artificial Intelligence',
                        style: TextStyle(
                          color: Color.fromRGBO(22, 79, 137, 1),
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
