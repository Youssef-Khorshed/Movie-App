import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/styles/app_text_style.dart';

class CustomTextRowWidget extends StatelessWidget {
  final String firstTitle;
  final String secTitle;
  final Function()? onTap;
  const CustomTextRowWidget(
      {super.key,
      required this.firstTitle,
      required this.secTitle,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AutoSizeText(
          firstTitle,
          style: AppTextStyle.style12Gray6W500,
        ),
        InkWell(
          onTap: onTap,
          child: AutoSizeText(
            secTitle,
            style: AppTextStyle.style12DarkpurpleW600,
          ),
        )
      ],
    );
  }
}
