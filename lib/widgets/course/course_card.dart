import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  const CourseCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(40),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 1),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
            ),
            child: Image.asset('assets/steam.png'),
          ),
          const SizedBox(height: 4),

          _buildHeader(),

          _buildInstructorInfo(),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '\$39.99',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Text(
                      'Start',
                      style: TextStyle(color: Color.fromRGBO(22, 79, 137, 1)),
                    ),
                    Icon(
                      Icons.arrow_forward_sharp,
                      color: Color.fromRGBO(22, 79, 137, 1),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding _buildInstructorInfo() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.grey[50],
        ),
        child: Row(
          spacing: 4,
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white, // Border color
                  width: 4.0, // Border width
                ),
              ),
              child: CircleAvatar(
                foregroundImage: AssetImage('assets/teach_bunthorn.png'),
                backgroundColor: Colors.white,
                // radius: 12,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mr. Bunthorn Liv',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'Professor @ITC',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color.fromRGBO(123, 123, 123, 1),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Padding _buildHeader() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Steam Webpage',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
          ),
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
    );
  }
}
