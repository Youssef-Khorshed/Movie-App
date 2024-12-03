import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/features/settings/theme/cubit/theme_cubit.dart';

import '../../../core/utils/enums/theme_state.dart';
import '../../../core/utils/styles/app_text_style.dart';

class CustomAuthTitleWidget extends StatelessWidget {
  final String title;
  const CustomAuthTitleWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      title,
      style: ThemeCubit.get(context).themeModeState == ThemeModeState.dark
          ? AppTextStyle.style25DarkpurpleW600.copyWith(color: Colors.white)
          : AppTextStyle.style25DarkpurpleW600,
      textAlign: TextAlign.center,
    );
  }
}
