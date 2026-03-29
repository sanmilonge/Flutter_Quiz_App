import 'package:flutter/material.dart';
import 'package:quiz/results_screen_text.dart';

class QuizSummary extends StatelessWidget {
  const QuizSummary(this.data, {super.key});
  final List<Map<String, Object>> data;
  @override
  Widget build(context) {
    return Container(
      margin: EdgeInsets.fromLTRB(25, 25, 40, 20),
      child: SizedBox(
        height: 400,
        child: SingleChildScrollView(
          child: Column(
            children: data.map((info) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: info['chosen answer'] == info['correct answer']
                          ? Colors.green
                          : Colors.red,
                    ),
                    child: Text(
                      ((info['question index'] as int) + 1).toString(),
                      style: TextStyle(color: Colors.purple),
                    ),
                  ),
                  SizedBox(width: 25),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ResultsScreenText(text: info['question'] as String),
                        SizedBox(height: 5),
                        ResultsScreenText.chosen(
                          text: info['chosen answer'] as String,
                        ),
                        ResultsScreenText.correct(
                          text: info['correct answer'] as String,
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
