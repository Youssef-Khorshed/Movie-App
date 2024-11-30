import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/colors/app_colors.dart';
import '../../../core/utils/styles/app_text_style.dart';

class CustomAppButton extends StatelessWidget {
  final String? buttonText;
  final double? width;
  final VoidCallback onPressed;
  final Color? textColor, buttonColor1, buttonColor2, borderColor;
  final bool? hasIcon;

  final double? borderCornerRadius;
  const CustomAppButton({
    this.borderColor,
    this.textColor,
    this.hasIcon,
    this.borderCornerRadius,
    this.buttonText,
    this.buttonColor1,
    this.buttonColor2,
    required this.onPressed,
    super.key,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: InkWell(
        onTap: onPressed,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                transform: const GradientRotation(10),
                colors: [
                  buttonColor1 ?? AppColors.lightpurple,
                  buttonColor2 ?? AppColors.purple,
                ],
              ),
              borderRadius: BorderRadius.circular(borderCornerRadius ?? 15),
              border: Border.all(
                  color: borderColor ?? Colors.transparent, width: 2)),
          height: 52,
          child: AutoSizeText(
            buttonText ?? "",
            style: AppTextStyle.style20WhiteW500.copyWith(color: textColor),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
