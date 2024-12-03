import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/colors/app_colors.dart';
import '../../../core/utils/styles/app_text_style.dart';

class TitleTextBox extends StatelessWidget {
  final String title;
  const TitleTextBox({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: MediaQuery.of(context).size.width * .4,
        height: 40,
        decoration: BoxDecoration(
          gradient: AppColors.backgroundGradientColors2,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: AutoSizeText(
            title,
            style: AppTextStyle.style20WhiteW700,
          ),
        ),
      ),
    );
  }
}
