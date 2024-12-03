import 'package:flutter/material.dart';

import '../../../../core/utils/colors/app_colors.dart';
import '../../../../core/utils/enums/theme_state.dart';
import '../../../../core/utils/styles/app_text_style.dart';
import '../../../settings/theme/cubit/theme_cubit.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.image, this.text1, this.text2});

  final String image;
  final String? text1, text2;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.fill))),
        ),
        const SizedBox(
          height: 12,
        ),
        Row(
          children: [
            text2 != null
                ? Padding(
                    padding: const EdgeInsets.only(right: 2.0),
                    child: Text(
                      text2!,
                      style:ThemeCubit.get(context).themeModeState == ThemeModeState.dark? AppTextStyle.style16WhiteW400: AppTextStyle.style16WhiteW400
                          .copyWith(color: AppColors.black),
                    ),
                  )
                : const SizedBox(),
            text1 != null
                ? Text("($text1)", style: AppTextStyle.style16WhiteW400)
                : const SizedBox()
          ],
        )
      ],
    );
  }
}
