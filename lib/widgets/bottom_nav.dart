import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.grey),
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 16,
            children: [
              Column(children: [Icon(Icons.search), Text("Explore")]),
              Column(
                children: [
                  Icon(Icons.my_library_books_outlined),
                  Text("My Course"),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.play_circle_fill_rounded, color: Colors.orange),
                  Text("Online Course"),
                ],
              ),
              Column(
                children: [Icon(Icons.category_outlined), Text("Category")],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
