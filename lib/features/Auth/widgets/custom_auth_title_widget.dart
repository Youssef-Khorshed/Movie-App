import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/styles/app_text_style.dart';

class CustomAuthTitleWidget extends StatelessWidget {
  final String title;
  const CustomAuthTitleWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      title,
      style: AppTextStyle.style25DarkpurpleW600,
      textAlign: TextAlign.center,
    );
  }
}
