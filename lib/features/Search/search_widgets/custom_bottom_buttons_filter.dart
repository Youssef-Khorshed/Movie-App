import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:movie_app/core/utils/Spacing/app_spacing.dart';
import 'package:movie_app/core/utils/colors/app_colors.dart';
import 'package:movie_app/core/utils/styles/app_text_style.dart';

class CustomBottombuttonsFilter extends StatelessWidget {
  const CustomBottombuttonsFilter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: _buildButton(
              onApply: () {},
              title: AppLocalizations.of(context)!.reset,
              context: context),
        ),
        horizontalSpace(40),
        Expanded(
          flex: 2,
          child: _buildButton(
              onApply: () {},
              title: AppLocalizations.of(context)!.apply,
              context: context),
        ),
      ],
    );
  }

  Widget _buildButton(
      {required VoidCallback onApply,
      required String title,
      required BuildContext context}) {
    return InkWell(
      onTap: onApply,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 5,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(
            colors: [AppColors.lightgray, AppColors.purple],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors
                .transparent, // Make background transparent to show gradient
            shadowColor: Colors
                .transparent, // Remove default button shadow to use custom
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          onPressed: onApply,
          child: AutoSizeText(
            title,
            style: AppTextStyle.style20WhiteW600.copyWith(),
            maxLines: 1, // Ensure the title is always in one line
          ),
        ),
      ),
    );
  }
}
