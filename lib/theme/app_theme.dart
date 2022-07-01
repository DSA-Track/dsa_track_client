import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class AppTheme {
  /// default application theme
  static ThemeData get basic => ThemeData(
        fontFamily: GoogleFonts.nunito().fontFamily,
        canvasColor: Colors.white,
        primaryColor: blueColor,
      );

  // you can add other custom theme in this class like  light theme, dark theme ,etc.

  // example :
  static ThemeData get light => ThemeData(
        brightness: Brightness.light,
        fontFamily: GoogleFonts.nunito().fontFamily,
        primaryColor: blueColor,
        canvasColor: whiteColor,
        backgroundColor: whiteColor,
        secondaryHeaderColor: yellowColor,
        hoverColor: whiteColor.withOpacity(0.6),
        cardColor: pinkColor,
      );
  static ThemeData get dark => ThemeData(
        brightness: Brightness.dark,
        fontFamily: GoogleFonts.nunito().fontFamily,
        canvasColor: whiteColor,
        primaryColor: blueColor,
        secondaryHeaderColor: yellowColor,
        cardColor: pinkColor,
      );

  static Color blueColor = Color(0xFF5358E2);
  static Color voiletColor = Color(0xFFCE76FE);
  static Color pinkColor = Color(0xFFED6F71);
  static Color yellowColor = Color(0xFFFEAE33);
  static Color blackColor = Color(0xFF292B31);
  static Color whiteColor = Color(0xFFFFFFFF);
  static Color darkwhiteColor = Color(0xFFF8F8F8);
  static Color bgBlueColor = Color(0xFFF5F7FB);
  static Color rightSideBackColor = Color(0xffF6F6FC);
  static Color color1 = Color(0xffFFA000);
static Color color2 = Color(0xff8CE3F3);
static Color color3 = Color(0xffF25767);
static Color color4 = Color(0xff6B6EDF);
}
