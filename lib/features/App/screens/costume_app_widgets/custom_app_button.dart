import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/styles/app_text_style.dart';
import '../../../../core/utils/colors/app_colors.dart';

class CustomAppButton extends StatelessWidget {
  final String? buttonText;
  final double? width;
  final VoidCallback onPressed;
  final Color? textColor, buttonColor1, buttonColor2, borderColor;
  final bool? hasIcon;
  final bool secondaryColor;

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
    this.secondaryColor = true,
    super.key,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
          margin: const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                transform: const GradientRotation(10),
                colors: secondaryColor
                    ? [
                        buttonColor1 ?? AppColors.lightpurple,
                        buttonColor2 ?? AppColors.purple,
                      ]
                    : [
                        AppColors.purple,
                        AppColors.white4,
                      ],
              ),
              borderRadius: BorderRadius.circular(borderCornerRadius ?? 15),
              border: Border.all(
                  color: borderColor ?? Colors.transparent, width: 2)),
          height: 53,
          child: Center(
            child: AutoSizeText(
              buttonText ?? "",
              style: AppTextStyle.style20WhiteW500.copyWith(color: textColor),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
