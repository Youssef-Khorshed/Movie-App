import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/core/utils/colors/app_colors.dart';

abstract class AppTextStyle {
  static TextStyle style15WhiteW500 = TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w500,
      color: AppColors.white,
      height: 0,
      fontFamily: GoogleFonts.cairo().fontFamily);
  static TextStyle style18WhiteW500 = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: AppColors.white,
      height: 0,
      fontFamily: GoogleFonts.poppins().fontFamily);
  static TextStyle style20WhiteW500 = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w500,
      color: AppColors.white,
      height: 0,
      fontFamily: GoogleFonts.poppins().fontFamily);

  static TextStyle style25DarkpurpleW600 = TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.w600,
      color: AppColors.darkpurple,
      fontFamily: GoogleFonts.poppins().fontFamily);

  static TextStyle style14Gray5W500 = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: AppColors.gray5,
      fontFamily: GoogleFonts.poppins().fontFamily);

  static TextStyle style14Gray8W500 = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppColors.gray8,
      fontFamily: GoogleFonts.poppins().fontFamily);

  static TextStyle style12Gray6W500 = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: AppColors.gray6,
      fontFamily: GoogleFonts.poppins().fontFamily);

  static TextStyle style12DarkpurpleW600 = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w600,
      color: AppColors.darkpurple,
      fontFamily: GoogleFonts.poppins().fontFamily);
}
