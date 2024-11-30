import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/styles/app_text_style.dart';

class CustomAuthSubtitleWidget extends StatelessWidget {
  final String subtitle;
  const CustomAuthSubtitleWidget({super.key, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      subtitle,
      style: AppTextStyle.style14Gray5W500,
      textAlign: TextAlign.center,
    );
  }
}
