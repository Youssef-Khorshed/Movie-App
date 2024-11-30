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

  static TextStyle style32WhitW400 = GoogleFonts.robotoSlab(
    fontWeight: FontWeight.w400,
    fontSize: 32,
    color: AppColors.black,
  );
  static TextStyle style14WhitW400 = GoogleFonts.robotoSlab(
    fontWeight: FontWeight.w400,
    color: AppColors.black2,
  );
  static TextStyle style12WhitW400 = GoogleFonts.robotoSlab(
    fontWeight: FontWeight.w400,
    fontSize: 12,
    color: AppColors.gray6,
  );
  static TextStyle style10WhitW400 = GoogleFonts.robotoSlab(
    fontWeight: FontWeight.w400,
    fontSize: 10,
    color: AppColors.gray6,
  );
}
