import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/core/utils/colors/app_colors.dart';

abstract class AppTextStyle {
  static TextStyle style32WhitW400 = GoogleFonts.robotoSlab(
    fontWeight: FontWeight.w400,
    fontSize: 32,
    color: AppColors.black,
  );
  static TextStyle style25DarkpurpleW600 = TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.w600,
      color: AppColors.darkpurple,
      fontFamily: GoogleFonts.cinzel().fontFamily);
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
  static TextStyle style20WhiteW700 = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w700,
      color: AppColors.white,
      height: 0,
      fontFamily: GoogleFonts.cinzel().fontFamily);

  static TextStyle style20PurpleW700 = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w700,
      color: AppColors.purple,
      height: 0,
      fontFamily: GoogleFonts.cinzel().fontFamily);

  static TextStyle style20BlackW700 = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w700,
      color: AppColors.black,
      height: 0,
      fontFamily: GoogleFonts.cinzel().fontFamily);

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

  static TextStyle style20WBlackW600 = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: AppColors.black,
      height: 0,
      fontFamily: GoogleFonts.poppins().fontFamily);

  static TextStyle style20blueW700 = TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 20,
      color: Color(0xff6C52EE),
      fontFamily: GoogleFonts.cinzel().fontFamily);

  static TextStyle style18WhiteW500 = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: AppColors.white,
      height: 0,
      fontFamily: GoogleFonts.poppins().fontFamily);

  static TextStyle style16BlackW500 = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColors.black,
      height: 0,
      fontFamily: GoogleFonts.robotoFlex().fontFamily);

  static TextStyle style16Gray10W500 = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColors.gray10,
      height: 0,
      fontFamily: GoogleFonts.robotoFlex().fontFamily);

  static TextStyle style16BlackW400 = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: AppColors.black,
      height: 0,
      fontFamily: GoogleFonts.robotoFlex().fontFamily);

  static TextStyle style16WhiteW400 = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: AppColors.gray4,
      height: 0,
      fontFamily: GoogleFonts.poppins().fontFamily);

  static TextStyle style14BlackW400 = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppColors.black,
      height: 0,
      fontFamily: GoogleFonts.robotoFlex().fontFamily);
  static TextStyle style14WhiteW400 = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppColors.white,
      height: 0,
      fontFamily: GoogleFonts.poppins().fontFamily);

  static TextStyle style15WhiteW500 = TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w500,
      color: AppColors.white,
      height: 0,
      fontFamily: GoogleFonts.cinzel().fontFamily);

  static TextStyle style12WhiteW400 = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: AppColors.white,
      height: 0,
      fontFamily: GoogleFonts.cairo().fontFamily);

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

  static TextStyle style12BlackW600 = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w600,
      color: AppColors.black,
      height: 0,
      fontFamily: GoogleFonts.poppins().fontFamily);

  static TextStyle style10DarkGray2W600 = TextStyle(
      fontSize: 10,
      color: AppColors.darkgray2,
      height: 0,
      fontWeight: FontWeight.w600,
      fontFamily: GoogleFonts.poppins().fontFamily);

  static TextStyle style13WhiteW400 = TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.w400,
      color: AppColors.gray3,
      height: 0,
      fontFamily: GoogleFonts.poppins().fontFamily);

  static TextStyle style16WhiteW700 = TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w700,
      fontSize: 16,
      fontFamily: GoogleFonts.cinzel().fontFamily);

  static TextStyle style14BlueW700 = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w700,
      color: const Color(0xff6C52EE),
      fontFamily: GoogleFonts.cinzel().fontFamily);

  static TextStyle style12grayW400 = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: const Color(0xff828282),
      fontFamily: GoogleFonts.cinzel().fontFamily);

  static TextStyle style20purpleW600 = TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 20,
      color: AppColors.purple,
      fontFamily: GoogleFonts.poppins().fontFamily);

  static TextStyle style20WhiteW500 = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w500,
      color: AppColors.white,
      height: 0,
      fontFamily: GoogleFonts.poppins().fontFamily);

  static TextStyle style16OrangeBold = TextStyle(
      color: Colors.orange,
      fontSize: 16,
      fontWeight: FontWeight.bold,
      height: 0,
      fontFamily: GoogleFonts.poppins().fontFamily);

  static TextStyle style14BlackW700 = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w700,
      color: const Color(0xff000000),
      height: 0,
      fontFamily: GoogleFonts.lato().fontFamily);

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

  static TextStyle style14Gray5W500 = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: AppColors.gray5,
      fontFamily: GoogleFonts.robotoFlex().fontFamily);

  static TextStyle style14Gray8W500RobotFlex = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: AppColors.gray8,
      fontFamily: GoogleFonts.robotoFlex().fontFamily);

  static TextStyle style14Gray8W500Poppins = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: AppColors.gray8,
      fontFamily: GoogleFonts.poppins().fontFamily);
  static TextStyle style12Gray6W500 = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: AppColors.gray6,
      fontFamily: GoogleFonts.robotoFlex().fontFamily);

  static TextStyle style12DarkpurpleW600 = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w600,
      color: AppColors.darkpurple,
      fontFamily: GoogleFonts.poppins().fontFamily);
}
