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

  static TextStyle style16WhiteW400 = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: AppColors.gray4,
      height: 0,
      fontFamily: GoogleFonts.poppins().fontFamily);




  static TextStyle style14WhiteW400 = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppColors.white,
      height: 0,
      fontFamily: GoogleFonts.poppins().fontFamily);
  static TextStyle style20WhiteW400 = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w400,
      color: AppColors.black,
      height: 0,
      fontFamily: GoogleFonts.poppins().fontFamily);
  static TextStyle style13WhiteW400 = TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.w400,
      color: AppColors.gray3,
      height: 0,
      fontFamily: GoogleFonts.poppins().fontFamily);
}