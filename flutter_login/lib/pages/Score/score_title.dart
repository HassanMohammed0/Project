import 'package:flutter/material.dart';

class ScoreTitle extends StatelessWidget {
  final String scoreTitle;
  final bool topView;
  const ScoreTitle({Key? key, required this.scoreTitle, required this.topView}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(0, 0, 0, 0.1),
        borderRadius: (topView)
            ? const BorderRadius.vertical(top: Radius.circular(50))
            : const BorderRadius.vertical(bottom: Radius.circular(50)),
      ),
      child: Text(
        scoreTitle,
        style: const TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }
}
