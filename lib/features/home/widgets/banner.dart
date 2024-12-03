import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/styles/app_text_style.dart';

class Bannermovie extends StatelessWidget {
  const Bannermovie({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 161,
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: const LinearGradient(
          colors: [
            Color(0xFF6C52EE), // Hex color #6C52EE
            Color(0xFF3E2F88), // Hex color #3E2F88
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      alignment: Alignment.center,
      child: Text(
        text,
        style: AppTextStyle.style16WhiteW700,
      ),
    );
  }
}
