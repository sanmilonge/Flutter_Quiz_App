import 'package:flutter/material.dart';
import 'custom_text.dart';
import 'answer_button.dart';
import 'package:quiz/data/questions.dart';

class QuestionsPage extends StatefulWidget {
  const QuestionsPage(this.chooseAnswer, {super.key});
  final void Function(String answer) chooseAnswer;
  @override
  State<QuestionsPage> createState() {
    return _QuizMainState();
  }
}

class _QuizMainState extends State<QuestionsPage> {
  var currentQuestionIndex = 0;

  void answerQuestion(String answer) {
    setState(() {
      currentQuestionIndex++;
      widget.chooseAnswer(answer);
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];
    return Container(
      margin: EdgeInsets.symmetric(vertical: 40),
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                alignment: Alignment.center,
                height: 121,
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: CustomText(
                  currentQuestion.question,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10),
              ...currentQuestion.shuffledAnswers().map((answers) {
                return Container(
                  height: 100,
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: AnswerButton(answers, () {
                    answerQuestion(answers);
                  }),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
