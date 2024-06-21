import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProblemList extends StatelessWidget {
  ProblemList({super.key});


  List<String> difficulties = [
    "Beginner",
    "Easy",
    "Medium",
    "Hard",
  ];

  final List<Color> difficultiesColors = [
    const Color.fromRGBO(26, 225, 26, 1),
    const Color.fromRGBO(245, 100, 0, 1),
    const Color.fromRGBO(225, 26, 26, 1),
    const Color.fromRGBO(140, 0, 0, 1),
  ];

  List testProblems = [
    {
      "title": "Seagull Snapshot Festival Obsession",
      "des": "Seagull Snapshot Festival Obsession Seagull Snapshot Festival Obsession",
      "diff": 0,
    },
    {
      "title": "Basics 08: Find next higher number with same Bits (1's)",
      "des": "Basics 08: Find next higher number with same Bits (1's) Basics 08: Find next higher number with same Bits (1's)",
      "diff": 2,
    },
    {
      "title": "Check the exam",
      "des": "Check the exam Check the exam Check the exam Check the exam",
      "diff": 3,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.builder(
        itemCount: testProblems.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {},
          child: Container(
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
                  testProblems[index]["title"],
                  softWrap: true,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  testProblems[index]["des"],
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
                      color: difficultiesColors[testProblems[index]["diff"]],
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(difficulties[testProblems[index]["diff"]], style: const TextStyle(color: Colors.white),),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
