import 'package:flutter/material.dart';
import 'package:flutter_tp4/widgets/learn_more/news_card.dart';

class LearnMoreSection extends StatelessWidget {
  const LearnMoreSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 80,
              width: 80,
              child: Stack(
                children: [
                  for (int i = 0; i < 3; i++) ...{
                    Positioned(
                      left: 20.0 * i,
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.orange,
                        size: 40,
                      ),
                    ),
                  },
                ],
              ),
            ),

            SizedBox(
              width: 250,
              child: Text(
                'To reach our only One goal,what we can share with you today',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),

        for (int i = 0; i < 4; i++) ...{SizedBox(height: 12), NewsCard()},

        SizedBox(height: 12),
        Row(
          children: [
            Spacer(),
            Text(
              'See more',
              style: TextStyle(
                color: Color.fromRGBO(22, 79, 137, 1),
                decoration: TextDecoration.underline,
                decorationColor: Color.fromRGBO(22, 79, 137, 1),
                decorationThickness: 1.0,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
