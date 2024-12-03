import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/colors/app_colors.dart';
import 'package:movie_app/core/utils/styles/app_text_style.dart';
import "package:flutter_gen/gen_l10n/app_localizations.dart";


class DetailsCustomButton extends StatelessWidget {
  const DetailsCustomButton({
    super.key,
    this.buttonWidth,
    this.buttonheight,
    this.buttonName,
  });
  final double? buttonWidth;
  final double? buttonheight;
  final String? buttonName;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: buttonWidth ?? 226,
      height: buttonheight ?? 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: const LinearGradient(colors: [
          AppColors.purple,
          AppColors.purple,
          AppColors.darkpurple,
        ], begin: Alignment.bottomLeft, end: Alignment.topRight),
      ),
      child: Center(
        child: AutoSizeText(
          buttonName ?? AppLocalizations.of(context)!.watch_now,
          style: AppTextStyle.style32WhitW400.copyWith(
              color: AppColors.white,
              fontSize: 20,
              fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
