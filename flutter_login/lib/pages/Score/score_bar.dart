import 'package:flutter/material.dart';
import 'package:flutter_login/pages/Score/score_item.dart';
import 'package:flutter_login/pages/Score/score_title.dart';

class ScoreBar extends StatelessWidget {
  ScoreBar({super.key});

  List<String> scoreItemsTitles = [
    "Beginner",
    "Easy",
    "Medium",
    "Hard",
  ];

  List<String> scoreItemsPages = [
    //"/beginner",
    //"/easy",
    //"/medium",
    //"/hard",
    "/signup",
    "/login",
    "/login",
    "/login",
  ];
  List<Color> scoreItemsColors = [
    const Color.fromRGBO(26, 225, 26, 1),
    const Color.fromRGBO(245, 100, 0, 1),
    const Color.fromRGBO(225, 26, 26, 1),
    const Color.fromRGBO(140, 0, 0, 1),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
            children: [
              const ScoreTitle(scoreTitle: "Level", topView: true,),
              SizedBox(
                width: 350,
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: scoreItemsTitles.length,
                  itemBuilder: (context, index) => ScoreItem(
                    buttonTitle: scoreItemsTitles[index].toString(),
                    itemColor: scoreItemsColors[index],
                    navPage: scoreItemsPages[index],
                  ),
                ),
              ),
              const ScoreTitle(scoreTitle: "", topView: false,),
            ],
          ),
      );
  }
}
