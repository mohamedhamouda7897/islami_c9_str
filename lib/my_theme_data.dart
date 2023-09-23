import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static Color primaryColor = Color(0xFFB7935F);
  static Color blackColor = Color(0xFF242424);
  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          centerTitle: true,
          iconTheme: IconThemeData(
            color: blackColor
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: primaryColor,
        type: BottomNavigationBarType.shifting,
        selectedItemColor: blackColor,
        unselectedItemColor: Colors.white,

      ),
      textTheme: TextTheme(
          bodyLarge: GoogleFonts.elMessiri(fontSize: 30,
              color: blackColor,
          fontWeight: FontWeight.bold),
          bodySmall:
              GoogleFonts.elMessiri(fontSize: 20, color: Color(0xFFFFFFFF)),
          bodyMedium: GoogleFonts.elMessiri(fontSize: 25, color: blackColor)));

  static ThemeData darkTheme = ThemeData();
}
