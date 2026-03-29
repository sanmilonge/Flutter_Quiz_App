import 'package:flutter/material.dart';
import 'package:quiz/landing_page.dart';
import 'package:quiz/questions_screen.dart';
import 'package:quiz/data/questions.dart';
import 'package:quiz/results_screen.dart';

class QuizMain extends StatefulWidget {
  const QuizMain({super.key});
  @override
  State<QuizMain> createState() {
    return _QuizMainState();
  }
}

class _QuizMainState extends State<QuizMain> {
  List<String> selectedAnswers = [];
  String activeScreen = 'startpage';

  void changeScreen() {
    setState(() {
      activeScreen = 'questionspage';
    });
  }

  void restartQuiz() {
    setState(() {
      activeScreen = 'questionspage';
      selectedAnswers = [];
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'resultsscreen';
      });
    }
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartPage(changeScreen);
    if (activeScreen == 'questionspage') {
      screenWidget = QuestionsPage(chooseAnswer);
    }
    if (activeScreen == 'resultsscreen') {
      screenWidget = ResultsScreen(selectedAnswers, restartQuiz);
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.deepPurple, Colors.purple],
              end: Alignment.bottomRight,
              begin: Alignment.topLeft,
            ),
          ),
          child: Center(child: screenWidget),
        ),
      ),
    );
  }
}
