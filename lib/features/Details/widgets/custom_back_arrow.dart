import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie_app/core/utils/assets/app_icons.dart';
import 'package:movie_app/core/utils/colors/app_colors.dart';

class CustomBackArrow extends StatelessWidget {
  const CustomBackArrow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: AppColors.lightblue.withAlpha(100),
      ),
      child: SizedBox(
        child: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(AppIcons.back),
        ),
      ),
    );
  }
}
