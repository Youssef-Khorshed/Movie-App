// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/colors/app_colors.dart';
import 'package:movie_app/core/utils/enums/theme_state.dart';
import 'package:movie_app/core/utils/styles/app_text_style.dart';
import 'package:movie_app/features/settings/theme/cubit/theme_cubit.dart';

// ignore: must_be_immutable
class CustomSwitcheritemWidget extends StatefulWidget {
  String title;
  CustomSwitcheritemWidget({
    super.key,
    required this.title,
  });

  @override
  State<CustomSwitcheritemWidget> createState() =>
      _CustomSwitcheritemWidgetState();
}

class _CustomSwitcheritemWidgetState extends State<CustomSwitcheritemWidget> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
                colors: ThemeCubit.get(context).themeModeState ==
                        ThemeModeState.light
                    ? [AppColors.lightgray, AppColors.purple]
                    : [AppColors.lightgray, AppColors.gray6])),
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            AutoSizeText(widget.title,
                style: ThemeCubit.get(context).themeModeState ==
                        ThemeModeState.light
                    ? AppTextStyle.style20WBlackW400
                    : AppTextStyle.style20WhiteW400),
            const Spacer(),
            Switch(
              value: isSwitched,
              onChanged: (value) {
                setState(() {
                  isSwitched = value;
                });
              },
            )
          ],
        ));
  }
}
