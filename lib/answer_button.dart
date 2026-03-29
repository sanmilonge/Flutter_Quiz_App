import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.text, this.method, {super.key});

  final String text;
  final Function() method;
  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: method,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 6),
        backgroundColor: const Color.fromARGB(255, 106, 19, 130),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
          side: BorderSide(
            style: BorderStyle.solid,
            color: const Color.fromARGB(255, 64, 1, 57),
          ),
        ),
      ),
      child: Text(
        text,
        style: GoogleFonts.lato(fontSize: 18, color: Colors.white),
        textAlign: TextAlign.center,
      ),
    );
  }
}
