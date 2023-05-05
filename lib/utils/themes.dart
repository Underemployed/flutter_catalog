import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  final a = Color(0xFF1F2126);

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        scaffoldBackgroundColor: Color(0xFF1F2126),
        fontFamily: GoogleFonts.lato().fontFamily,
        primarySwatch: Colors.red,
        primaryTextTheme: GoogleFonts.latoTextTheme(),
        appBarTheme: AppBarTheme(
          color: Colors.grey[900],
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.white),
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      );
}
