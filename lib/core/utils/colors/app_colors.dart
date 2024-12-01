import 'package:flutter/material.dart';

class AppColors {
  static const Color transparent = Colors.transparent;

  // White Colors
  static const Color white = Colors.white;
  static const Color white2 = Color(0xFFF3FDFF);
  static const Color white3 = Color(0xFFEFEFEF);
  static const Color white4 = Color(0xFFF3F3E0);
  static const Color white5 = Color(0xFFD9d9d9);
  // purple Colors
  static const Color purple = Color(0xFF6C52EE);

  static const Color purple2 = Color(0xFF6C52EE);
  static const Color purpleblue = Color(0xFF2401FE);
  static const Color darkpurple = Color(0xFF3E2F88);
  static const Color lightpurple = Color(0xFFB379DF);

  // Gray Colors
  static const Color lightgray = Color(0xFFD9D9D9);
  static const Color gray1 = Color(0xFFACB5BB);
  static const Color gray2 = Color(0xFFBCBCBC);
  static const Color gray3 = Color(0xFFB6B6B6);
  static const Color gray4 = Color(0xFFA4A4A4);
  static const Color gray5 = Color(0xFF828282);
  static const Color gray6 = Color(0xFF737373);
  static const Color gray7 = Color(0xFF6C7278);
  static const Color gray8 = Color(0xFF646464);
  static const Color gray9 = Color(0xFF6C6C6C);
  static const Color gray10 = Color(0xFF777777);
  static const Color gray11 = Color(0xFF6C7278);
  static const Color gray12 = Color(0xFF666666);
  static const Color gray13 = Color(0xFF8F8F8F);
  static const Color gray14 = Color(0xFF848484);
  static const Color darkgray = Color(0xFF3E3E3E);
  static const Color darkgray2 = Color(0xFF423B3B);
  static const Color darkgray3 = Color(0xFF4A4646);

  // Black Colors
  static const Color black = Color(0xFF000000);
  static const Color black2 = Color(0xFF2A2A2A);
  // Blue Colors
  static const Color lightblue = Color(0xFFCBDCEB);
  static const Color blue = Color(0xFF90A6DF);
  static const Color blue2 = Color(0xFF8EACCD);
  static const Color bluegray = Color(0xFF949EB2);
  static const Color darkblue = Color(0xFF080341);

  // Green Colors
  static const Color green = Color(0xFF009606);
  // Orange Colors
  static const Color orange = Color(0xFFEE8924);
  static const Color lightorange = Color(0xFFFFB200);
  static const Color mediumorange = Color(0xFFCEA953);
  // Yellow Colors
  static const Color lightyellow = Color(0xFFF5E897);
  static const Color yellow = Color(0xFFE7C825);
  // Red Colors
  static const Color red = Color(0xFFFF0004);

  static Gradient formFieldGradientColors = const LinearGradient(
    colors: [
      Color(0xFFEDE7F6),
      Color(0xFFD1C4E9),
      Color(0xFFEDE7F6),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static Gradient backgroundGradientColors = const LinearGradient(
    colors: [
      Color(0xFFEDE7F6),
      Color(0xFFD1C4E9),
      Color(0xFFEDE7F6),
      Color(0xFFD1C4E9),
      Color(0xFFEDE7F6),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
