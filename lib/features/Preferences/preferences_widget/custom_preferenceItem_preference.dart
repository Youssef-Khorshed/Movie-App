// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';
import 'package:movie_app/core/utils/assets/app_animation.dart';
import 'package:movie_app/core/utils/assets/app_icons.dart';
import 'package:movie_app/core/utils/colors/app_colors.dart';
import 'package:movie_app/core/utils/enums/theme_state.dart';
import 'package:movie_app/core/utils/styles/app_text_style.dart';
import 'package:movie_app/features/settings/localization/cubit/local_cubit.dart';
import 'package:movie_app/features/settings/theme/cubit/theme_cubit.dart';

// ignore: must_be_immutable
class CustomPreferenceitem extends StatefulWidget {
  String title;
  CustomPreferenceitem({
    super.key,
    required this.title,
  });

  @override
  State<CustomPreferenceitem> createState() => _CustomPreferenceitemState();
}

class _CustomPreferenceitemState extends State<CustomPreferenceitem> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor:
              ThemeCubit.get(context).themeModeState == ThemeModeState.light
                  ? AppColors.white
                  : AppColors.black2,
          elevation: 0,
          title: AutoSizeText(
            widget.title,
            style:
                ThemeCubit.get(context).themeModeState == ThemeModeState.light
                    ? AppTextStyle.style24BlackW600
                    : AppTextStyle.style24WhiteW600,
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: LocalCubit.get(context).localization == const Locale("en")
                  ? SvgPicture.asset(AppIcons.back)
                  : Transform.rotate(
                      angle: 3.14159, child: SvgPicture.asset(AppIcons.back))),
        ),
        backgroundColor:
            ThemeCubit.get(context).themeModeState == ThemeModeState.light
                ? AppColors.white
                : AppColors.black2,
        body: Center(
          child: Lottie.asset(
            AppAnimation.waitfordata,

            fit: BoxFit.fitHeight,
            repeat: true, // Loop the animation
            reverse: true, // Play animation in reverse
            animate: true, // Whether the animation should animate or not
          ),
        ));
  }
}
