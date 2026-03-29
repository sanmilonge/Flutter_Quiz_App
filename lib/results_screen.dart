import 'package:flutter/material.dart';
import 'package:quiz/custom_text.dart';
import 'package:quiz/data/questions.dart';
import 'package:quiz/quiz_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(this.chosenAnswers, this.restartQuiz, {super.key});
  final List<String> chosenAnswers;
  final void Function() restartQuiz;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question index': i,
        'question': questions[i].question,
        'correct answer': questions[i].answers[0],
        'chosen answer': chosenAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(context) {
    final summary = getSummaryData();
    final int totalNumofQuestions = questions.length;
    final int totalCorrectAnswers = summary.where((data) {
      return data['chosen answer'] == data['correct answer'];
    }).length;

    return Center(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 40),
            CustomText(
              'You got $totalCorrectAnswers out of $totalNumofQuestions questions right!',
            ),
            QuizSummary(summary),
            ElevatedButton.icon(
              onPressed: restartQuiz,
              icon: Icon(Icons.refresh_rounded),
              label: Text('Retry'),
            ),
          ],
        ),
      ),
    );
  }
}
