import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/core/utils/Spacing/app_spacing.dart';
import 'package:movie_app/core/utils/colors/app_colors.dart';
import 'package:movie_app/core/utils/enums/theme_state.dart';
import 'package:movie_app/features/Details/widgets/details_custom_buttoon.dart';
import 'package:movie_app/features/Details/widgets/quality_and_lang_container.dart';
import 'package:movie_app/features/settings/theme/cubit/theme_cubit.dart';

class DownloadBottomSheet extends StatelessWidget {
  const DownloadBottomSheet({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    bool isLight =
        ThemeCubit.get(context).themeModeState == ThemeModeState.light;
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: isLight
                ? AppColors.purple.withAlpha(100)
                : AppColors.black.withAlpha(100),
            spreadRadius: 20,
            blurRadius: 50,
          )
        ],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
        gradient: LinearGradient(
            colors: isLight
                ? [AppColors.purple.withAlpha(200), const Color(0xffdad5f5)]
                : [AppColors.black, AppColors.black],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            verticalSpace(5),
            Divider(
              thickness: 4,
              endIndent: 100,
              indent: 100,
              color: isLight ? AppColors.white : AppColors.gray10,
            ),
            verticalSpace(17),
            Text(
              'Download Setting',
              style: GoogleFonts.roboto(
                fontSize: 24,
                fontWeight: FontWeight.w400,
                color: AppColors.white,
              ),
            ),
            verticalSpace(30),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Quality',
                style: GoogleFonts.roboto(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: AppColors.white,
                ),
              ),
            ),
            verticalSpace(17),
            const QualityAndLangContainer(
              text: 'Full HD (1080)',
            ),
            const QualityAndLangContainer(
              text: 'HD (720)',
            ),
            const QualityAndLangContainer(
              text: 'HD (720)',
            ),
            verticalSpace(30),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Language',
                style: GoogleFonts.roboto(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: AppColors.white,
                ),
              ),
            ),
            verticalSpace(17),
            const QualityAndLangContainer(
              text: 'English',
              gbWidget: SizedBox(),
            ),
            const QualityAndLangContainer(
              text: 'Arabic',
              gbWidget: SizedBox(),
            ),
            verticalSpace(30),
            const DetailsCustomButton(
              buttonWidth: 204,
              buttonheight: 48,
              buttonName: 'DOWNLOAD',
            ),
          ],
        ),
      ),
    );
  }
}
