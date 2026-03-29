import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  const CustomText(this.text, {this.color, super.key});

  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.lato(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: color ?? const Color.fromARGB(255, 106, 19, 130), 
      ),
      textAlign: TextAlign.center,
    );
  }
}
