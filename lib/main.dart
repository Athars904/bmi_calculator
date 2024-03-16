import 'package:flutter/material.dart';
import 'input_page.dart';
import 'package:google_fonts/google_fonts.dart';
void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF090E21),
        scaffoldBackgroundColor: Color(0xFF090E21),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF090E21),
          centerTitle: true,
        ),
      ),
      home: InputPage(
      ),
    );
  }
}

