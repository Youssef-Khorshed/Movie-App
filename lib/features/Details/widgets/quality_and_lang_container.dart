import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/Spacing/app_spacing.dart';
import 'package:movie_app/core/utils/colors/app_colors.dart';
import 'package:movie_app/core/utils/enums/theme_state.dart';
import 'package:movie_app/features/settings/theme/cubit/theme_cubit.dart';

import '../../../core/utils/styles/app_text_style.dart';

class QualityAndLangContainer extends StatelessWidget {
  const QualityAndLangContainer({
    super.key,
    required this.text,
    this.gbWidget,
  });

  final String text;
  final Widget? gbWidget;

  @override
  Widget build(BuildContext context) {
    bool isLight =
        ThemeCubit.get(context).themeModeState == ThemeModeState.light;
    return Card(
      // shadowColor: Colors.transparent,
      elevation: 20,
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: isLight
                  ? [AppColors.purple.withAlpha(200), const Color(0xffdad5f5)]
                  : [const Color(0xff454545), const Color(0xff767676)],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight),
          borderRadius: BorderRadius.circular(10),
          // color: isLight ? const Color(0xffdad5f5) : const Color(0xff454545),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              AutoSizeText(
                text,
                style: AppTextStyle.style20WBlackW400.copyWith(
                  color: isLight ? AppColors.black : AppColors.white,
                ),
              ),
              const Spacer(),
              gbWidget == null
                  ? AutoSizeText(
                      '4.2 GB',
                      style: AppTextStyle.style12BlackW600,
                    )
                  : gbWidget!,
              horizontalSpace(10),
              Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.white,
                    border: Border.all(
                      width: 3,
                      color: isLight ? AppColors.black : AppColors.white,
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
