import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/core/utils/Spacing/app_spacing.dart';
import 'package:movie_app/core/utils/colors/app_colors.dart';
import 'package:movie_app/core/utils/enums/theme_state.dart';
import 'package:movie_app/features/settings/theme/cubit/theme_cubit.dart';

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
              Text(
                text,
                style: GoogleFonts.poppins(
                    color: isLight ? AppColors.black : AppColors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 20),
              ),
              const Spacer(),
              gbWidget == null
                  ? Text(
                      '4.2 GB',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        color: isLight ? AppColors.black2 : AppColors.gray1,
                      ),
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
