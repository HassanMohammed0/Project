import 'package:flutter/material.dart';
import 'package:flutter_login/pages/AboutUs.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final String problemTitle = "Basics 08: Find next higher number with same Bits (1's)";
  final String problemDescription = "Find the next higher number with the same number of 1 bits in its binary representation.";
  final int problemDifficulty = 2; // Medium

  static const List<String> difficulties = [
    "Beginner",
    "Easy",
    "Try",
    "Hard",
  ];

  static const List<Color> difficultiesColors = [
    Color.fromRGBO(26, 225, 26, 1),
    Color.fromRGBO(245, 100, 0, 1),
    Color.fromRGBO(225, 26, 26, 1),
    Color.fromRGBO(140, 0, 0, 1),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                problemTitle,
                softWrap: true,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Text(
                problemDescription,
                softWrap: true,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                  decoration: BoxDecoration(
                    color: difficultiesColors[problemDifficulty],
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    difficulties[problemDifficulty],
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
