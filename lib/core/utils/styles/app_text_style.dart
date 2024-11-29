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
}
