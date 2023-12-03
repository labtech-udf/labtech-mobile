import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors.dart';

class TextStyles {
  static const FontWeight regular = FontWeight.w200;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight bold = FontWeight.w700;

  static TextStyle get bodyText1 => GoogleFonts.poppins().copyWith(
        fontSize: 16,
        color: Colors.black,
        letterSpacing: 0,
      );

  static TextStyle get bodyText9 => GoogleFonts.poppins().copyWith(
        fontSize: 20,
        fontWeight: FontWeight.w900,
        color: Colors.black,
        letterSpacing: 1,
      );

  static TextStyle get bodyText2 => GoogleFonts.poppins().copyWith(
        fontSize: 14,
        color: primaryTextColor,
        letterSpacing: 1,
      );

  static TextStyle get bodyText3 => GoogleFonts.poppins().copyWith(
        fontSize: 12,
        color: primaryTextColor,
        letterSpacing: 1,
      );

  static TextStyle get headLine1 => GoogleFonts.poppins().copyWith(
        fontSize: 28,
        color: primaryTextColor,
        fontWeight: FontWeight.w600,
        letterSpacing: 1,
      );

  static TextStyle get headLine2 => GoogleFonts.poppins().copyWith(
        fontSize: 22,
        color: primaryTextColor,
        fontWeight: FontWeight.w600,
        letterSpacing: 1,
      );

  static TextStyle get headLine3 => GoogleFonts.poppins().copyWith(
        fontSize: 16,
        color: primaryTextColor,
        fontWeight: FontWeight.w600,
        letterSpacing: 1,
      );

  static TextStyle get label1 => GoogleFonts.poppins().copyWith(
        fontSize: 14,
        color: primaryTextColor,
      );
}
