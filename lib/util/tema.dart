import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData tema() {
  return ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
    textTheme: TextTheme(
      bodySmall: GoogleFonts.montserrat(
        fontSize: 12,
      ),
      bodyMedium: GoogleFonts.montserrat(
        fontSize: 16,
      ),
      bodyLarge: GoogleFonts.montserrat(
        fontSize: 18,
      ),
      headlineMedium: GoogleFonts.montserrat(
        fontSize: 22,
        fontWeight: FontWeight.w700,
      ),
      titleSmall: GoogleFonts.montserrat(),
      titleMedium: GoogleFonts.montserrat(),
      titleLarge: GoogleFonts.montserrat(),
    ),
  );
}
