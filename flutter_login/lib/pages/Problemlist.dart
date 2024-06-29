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
      "title": "Two Sum",
      "des": "Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.",
      "diff": 0,
    },
    {
      "title": "Reverse Linked List",
      "des": "Given the head of a singly linked list, reverse the list, and return the reversed list.",
      "diff": 2,
    },
    {
      "title": "Merge K Sorted Lists",
      "des": "You are given an array of k linked-lists lists, each linked-list is sorted in ascending order. Merge all the linked-lists into one sorted linked-list and return it.",
      "diff": 1,
    },
    {
      "title": "Valid Parentheses",
      "des": "Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.",
      "diff": 3,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.builder(
        itemCount: testProblems.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, "/codetry");
          },
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
                    child: Text(
                      difficulties[testProblems[index]["diff"]],
                      style: const TextStyle(color: Colors.white),
                    ),
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
