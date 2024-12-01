import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie_app/core/utils/colors/app_colors.dart';
import 'package:movie_app/core/utils/enums/theme_state.dart';
import 'package:movie_app/features/settings/theme/cubit/theme_cubit.dart';

class OptionCircleContainer extends StatelessWidget {
  const OptionCircleContainer({
    super.key,
    required this.svgPath,
    this.onPressed,
  });
  final String svgPath;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    bool isLight =
        ThemeCubit.get(context).themeModeState == ThemeModeState.light;
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(colors: [
          AppColors.purple,
          isLight ? AppColors.white : AppColors.gray7,
        ], begin: Alignment.bottomLeft, end: Alignment.topRight),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: SvgPicture.asset(
          svgPath,
          color: isLight ? AppColors.black : AppColors.white,
        ),
      ),
    );
  }
}
