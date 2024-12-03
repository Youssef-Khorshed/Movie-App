import 'package:flutter/material.dart';
import 'package:movie_app/features/settings/theme/cubit/theme_cubit.dart';

import '../../../core/utils/colors/app_colors.dart';
import '../../../core/utils/enums/theme_state.dart';

class CustomBackgroundContiner extends StatelessWidget {
  final Widget child;
  const CustomBackgroundContiner({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        gradient: ThemeCubit.get(context).themeModeState == ThemeModeState.dark
            ? AppColors.backgroundGradientDarkColors
            : AppColors.backgroundGradientColors,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(60),
          topRight: Radius.circular(60),
        ),
      ),
      child: child,
    );
  }
}
