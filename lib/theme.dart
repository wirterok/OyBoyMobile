import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OyBoyTheme {
  static const Color appColor = Color.fromARGB(255, 241, 0, 141);

  static TextTheme textLightTheme = TextTheme(
      headline1: GoogleFonts.poppins(
          fontSize: 32.0, fontWeight: FontWeight.w600, color: Colors.black),
      headline2: GoogleFonts.poppins(
          fontSize: 28.0, fontWeight: FontWeight.w600, color: Colors.black),
      headline3: GoogleFonts.poppins(
          fontSize: 24.0, fontWeight: FontWeight.w600, color: Colors.black),
      headline4: GoogleFonts.poppins(
          fontSize: 20.0, fontWeight: FontWeight.w600, color: Colors.black),
      headline5: GoogleFonts.poppins(
          fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.black),
      headline6: GoogleFonts.poppins(
          fontSize: 12.0, fontWeight: FontWeight.w600, color: Colors.black),
      subtitle1: GoogleFonts.dmSans(
          fontSize: 12.0, fontWeight: FontWeight.normal, color: Colors.black),
      subtitle2: GoogleFonts.dmSans(
          fontSize: 10.0, fontWeight: FontWeight.normal, color: Colors.black),
      bodyText1: GoogleFonts.poppins(
          fontSize: 18.0, fontWeight: FontWeight.w500, color: Colors.black),
      bodyText2: GoogleFonts.poppins(
          fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.black),
      button: GoogleFonts.poppins(
          fontSize: 14.0, fontWeight: FontWeight.bold, color: appColor));

  static TextTheme textDarkTheme = TextTheme(
      headline1: GoogleFonts.poppins(
          fontSize: 32.0, fontWeight: FontWeight.w600, color: Colors.white),
      headline2: GoogleFonts.poppins(
          fontSize: 28.0, fontWeight: FontWeight.w600, color: Colors.white),
      headline3: GoogleFonts.poppins(
          fontSize: 24.0, fontWeight: FontWeight.w600, color: Colors.white),
      headline4: GoogleFonts.poppins(
          fontSize: 20.0, fontWeight: FontWeight.w600, color: Colors.white),
      headline5: GoogleFonts.poppins(
          fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.white),
      headline6: GoogleFonts.poppins(
          fontSize: 12.0, fontWeight: FontWeight.w600, color: Colors.white),
      subtitle1: GoogleFonts.dmSans(
          fontSize: 12.0, fontWeight: FontWeight.normal, color: Colors.white),
      subtitle2: GoogleFonts.dmSans(
          fontSize: 10.0, fontWeight: FontWeight.normal, color: Colors.white),
      bodyText1: GoogleFonts.poppins(
          fontSize: 18.0, fontWeight: FontWeight.w300, color: Colors.white),
      bodyText2: GoogleFonts.poppins(
          fontSize: 14.0, fontWeight: FontWeight.w300, color: Colors.white),
      button: GoogleFonts.poppins(
          fontSize: 14.0, fontWeight: FontWeight.bold, color: Colors.white));

  static ThemeData get lightTheme {
    return ThemeData(
        primaryColor: appColor,
        brightness: Brightness.light,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: appColor,
        ),
        floatingActionButtonTheme:
            const FloatingActionButtonThemeData(backgroundColor: appColor),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
          primary: Colors.white,
          side: const BorderSide(color: appColor),
          shadowColor: appColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        )),
        chipTheme: const ChipThemeData(
            selectedColor: Colors.transparent,
            side: BorderSide(color: appColor, width: 1.5),
            // disabledColor: Colors.transparent,
            selectedShadowColor: appColor,
            shadowColor: Colors.transparent),
        textTheme: textLightTheme);
  }

  static ThemeData get darkTheme {
    return ThemeData(
        brightness: Brightness.dark,
        appBarTheme:
            const AppBarTheme(iconTheme: IconThemeData(color: Colors.white)),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
            selectedItemColor: appColor,
            selectedLabelStyle: textLightTheme.bodyLarge),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
          primary: Colors.white,
          side: const BorderSide(color: appColor),
          shadowColor: appColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        )),
        chipTheme: const ChipThemeData(
          selectedColor: Colors.transparent,
          side: BorderSide(color: appColor, width: 1.5),
          disabledColor: Colors.transparent,
          selectedShadowColor: Colors.white,
          shadowColor: Colors.transparent,
        ),
        textTheme: textDarkTheme);
  }
}
