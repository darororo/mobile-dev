import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tp4/widgets/learn_more/news_card.dart';

class ExploreWidget extends StatelessWidget {
  const ExploreWidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.orange,
              size: 40,
            ),

            Text(
              title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),

        SizedBox(
          width: 300,
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 160,
                    width: 240,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      image: DecorationImage(
                        image: AssetImage('assets/course.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),

                  SizedBox(height: 12),

                  Text(
                    'Introduction to Machine Learning',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),

                  SizedBox(
                    width: 240,
                    child: Text(
                      "“Machine learning and AI are the engines driving the technological revolution of our time, transforming the way we work, live, and innovate”",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),

        SizedBox(height: 12),

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
          width: 28,
          height: 4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.orange,
          ),
        ),

        for (int i = 0; i < 3; i++) ...{
          Container(
            width: 28,
            height: 4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: const Color.fromRGBO(216, 216, 216, 1),
            ),
          ),
        },
      ],
    );
  }
}
