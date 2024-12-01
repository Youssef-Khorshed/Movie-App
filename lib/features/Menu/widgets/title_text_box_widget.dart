import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/colors/app_colors.dart';
import '../../../core/utils/styles/app_text_style.dart';

class TitleTextBox extends StatelessWidget {
  final String title;
  const TitleTextBox({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        gradient: AppColors.backgroundGradientColors2,
        borderRadius: BorderRadius.circular(10),
      ),
      child: AutoSizeText(
        title,
        style: AppTextStyle.style15WhiteW500,
      ),
    );
  }
}
