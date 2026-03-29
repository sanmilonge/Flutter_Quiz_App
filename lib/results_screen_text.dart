import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultsScreenText extends StatelessWidget {
  const ResultsScreenText({required this.text, this.isChosen = '', super.key});
  const ResultsScreenText.chosen({
    required this.text,
    this.isChosen = 'true',
    super.key,
  });
  const ResultsScreenText.correct({
    required this.text,
    this.isChosen = 'false',
    super.key,
  });
  final String text;
  final String isChosen;
  @override
  Widget build(BuildContext context) {
    TextStyle chosenAnswerStyle = TextStyle(color: Colors.amber);
    if (isChosen == '') {
      chosenAnswerStyle = TextStyle(
        color: const Color.fromARGB(155, 255, 255, 255),
        fontSize: 15,
      );
    }
    if (isChosen == 'true') {
      chosenAnswerStyle = TextStyle(
        color: const Color.fromARGB(255, 128, 8, 172),
        fontSize: 14,
        fontWeight: FontWeight.w500,
      );
    }
    if (isChosen == 'false') {
      chosenAnswerStyle = TextStyle(
        color: const Color.fromARGB(255, 150, 175, 218),
        fontWeight: FontWeight.w900,
        fontSize: 12,
      );
    }

    return Text(
      text,
      style: GoogleFonts.lato(textStyle: chosenAnswerStyle),
      textAlign: TextAlign.left,
    );
  }
}
