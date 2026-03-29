import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartPage extends StatelessWidget {
  const StartPage(this.changeScreen, {super.key});
  final void Function() changeScreen;
  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          color: const Color.fromARGB(238, 255, 255, 255),
          height: 200,
          width: 200,
        ),
        SizedBox(height: 30),
        Text(
          'Learn Flutter the fun way!',
          textAlign: TextAlign.center,
          style: GoogleFonts.lato(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 30),
        ElevatedButton.icon(
          onPressed: changeScreen,
          icon: Icon(Icons.arrow_right_alt, color: Colors.deepPurple),
          style: ElevatedButton.styleFrom(
            minimumSize: Size(100, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(width: 1, color: Colors.white),
            ),
          ),
          label: Text('Start Quiz', style: TextStyle(color: Colors.deepPurple)),
        ),
      ],
    );
  }
}
