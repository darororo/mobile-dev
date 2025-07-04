import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> column1 = [
      "About Us",
      "Contact Us",
      "FaQs",
      "Community Forum",
      "Term of Service",
      "Careers",
      "Leadership",
      "Blog",
    ];
    List<String> column2 = [
      "Social Impact",
      "Cookies Setting",
      "Terms",
      "Accessibility Statement",
      "Investors",
      "GO Pro Course",
      "Affiliate",
    ];

    return Column(
      children: [
        Row(
          children: [
            SizedBox(height: 32, child: Image.asset('assets/logo_title.png')),
            Spacer(),
          ],
        ),

        SizedBox(height: 16),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [_buildNavColumn(column1), _buildNavColumn(column2)],
        ),

        SizedBox(height: 24),
        Text(
          'Certified',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        SizedBox(height: 8),
        Container(
          height: 120,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/itc.png')),
          ),
        ),

        SizedBox(height: 40),
        Container(
          height: 20,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/socials.png')),
          ),
        ),

        SizedBox(height: 20),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('2023'),
            Icon(Icons.copyright),
            SizedBox(width: 8),
            Text('Worktency, Inc. All rights reserved. '),
          ],
        ),
      ],
    );
  }

  Column _buildNavColumn(List<String> column) {
    return Column(
      spacing: 4,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (String t in column) ...{
          Text(t, style: TextStyle(fontWeight: FontWeight.bold)),
        },
      ],
    );
  }
}
