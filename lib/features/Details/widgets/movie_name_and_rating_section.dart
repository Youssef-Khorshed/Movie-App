import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie_app/core/utils/Spacing/app_spacing.dart';
import 'package:movie_app/core/utils/assets/app_icons.dart';
import 'package:movie_app/core/utils/colors/app_colors.dart';
import 'package:movie_app/core/utils/enums/theme_state.dart';
import 'package:movie_app/core/utils/styles/app_text_style.dart';
import 'package:movie_app/features/settings/theme/cubit/theme_cubit.dart';

class MovieNameAndRatingSection extends StatelessWidget {
  const MovieNameAndRatingSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isLight =
        ThemeCubit.get(context).themeModeState == ThemeModeState.light;
    return Row(
      children: [
        Text(
          'VENOM',
          style: AppTextStyle.style32WhitW400
              .copyWith(color: isLight ? AppColors.black : AppColors.white),
        ),
        horizontalSpace(16),
        Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Text('2018', style: AppTextStyle.style12WhitW400),
        ),
        const Spacer(),
        Column(
          children: [
            SizedBox(
              height: 20,
              width: 80,
              child: ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return SvgPicture.asset(AppIcons.star);
                  },
                  separatorBuilder: (context, index) => horizontalSpace(2),
                  itemCount: 5),
            ),
            Text(
              'From 342 users',
              style: AppTextStyle.style10WhitW400,
            ),
          ],
        )
      ],
    );
  }
}
