import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/core/utils/colors/app_colors.dart';

abstract class AppTextStyle {
  static TextStyle style24WhiteW600 = TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: AppColors.white,
      height: 0,
      fontFamily: GoogleFonts.cairo().fontFamily);
  static TextStyle style24BlackW600 = TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: AppColors.black,
      height: 0,
      fontFamily: GoogleFonts.cairo().fontFamily);

  static TextStyle style20WhiteW400 = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w400,
      color: AppColors.white,
      height: 0,
      fontFamily: GoogleFonts.cairo().fontFamily);

  static TextStyle style20WhiteW600 = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: AppColors.white,
      height: 0,
      fontFamily: GoogleFonts.cairo().fontFamily);

  static TextStyle style20WBlackW400 = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w400,
      color: AppColors.black,
      height: 0,
      fontFamily: GoogleFonts.poppins().fontFamily);

  static TextStyle style18WhiteW500 = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: AppColors.white,
      height: 0,
      fontFamily: GoogleFonts.poppins().fontFamily);

  static TextStyle style16WBlackW400 = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: AppColors.black,
      height: 0,
      fontFamily: GoogleFonts.poppins().fontFamily);

  static TextStyle style15WhiteW500 = TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w500,
      color: AppColors.white,
      height: 0,
      fontFamily: GoogleFonts.cairo().fontFamily);

  static TextStyle style12WhiteW400 = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: AppColors.white,
      height: 0,
      fontFamily: GoogleFonts.poppins().fontFamily);

  static TextStyle style12Gray9W400 = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: AppColors.gray9,
      height: 0,
      fontFamily: GoogleFonts.poppins().fontFamily);
  static TextStyle style12LightGrayW400 = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: AppColors.lightgray,
      height: 0,
      fontFamily: GoogleFonts.poppins().fontFamily);

  static TextStyle style12DarkGray2W600 = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w600,
      color: AppColors.darkgray2,
      height: 0,
      fontFamily: GoogleFonts.poppins().fontFamily);

  static TextStyle style12BlackW400 = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: AppColors.black,
      height: 0,
      fontFamily: GoogleFonts.poppins().fontFamily);

  static TextStyle style10DarkGray2W600 = TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w600,
      color: AppColors.darkgray2,
      height: 0,
      fontFamily: GoogleFonts.poppins().fontFamily);
}
