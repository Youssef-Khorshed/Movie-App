import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/core/utils/Routing/app_routes.dart';
import 'package:movie_app/core/utils/Spacing/app_spacing.dart';
import 'package:movie_app/core/utils/colors/app_colors.dart';
import 'package:movie_app/features/settings/data/grid_view_model.dart';
import 'package:movie_app/features/settings/localization/cubit/local_cubit.dart';

import '../../../core/utils/enums/theme_state.dart';
import '../theme/cubit/theme_cubit.dart';

class CustomSettingItem extends StatelessWidget {
  const CustomSettingItem({super.key, required this.data, required this.index});
  final SettingGridViewModel data;
  final int index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (index == 0) {
          Navigator.pushNamed(context, AppRoutes.profileEditingScreen);
        } else if (index == 1) {
          Navigator.pushNamed(context, AppRoutes.preferences);
        } else if (index == 2) {
          BlocProvider.of<LocalCubit>(context).changeLocale();
        }
      },
      child: Card(
        elevation: 10,
        shadowColor: AppColors.white,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient:
                ThemeCubit.get(context).themeModeState == ThemeModeState.light
                    ? LinearGradient(
                        colors: [
                          AppColors.purple2.withOpacity(0.3),
                          AppColors.white5.withOpacity(0.6),
                        ],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                      )
                    : LinearGradient(
                        colors: [
                          const Color(0x99D9D9D9),
                          const Color(0x99737373),
                          AppColors.white5.withOpacity(0.6),
                        ],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                      ),
          ),
          child: Padding(
            padding: const EdgeInsetsDirectional.only(start: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  width: 24,
                  height: 24,
                  data.svgIcon,
                  color: ThemeCubit.get(context).themeModeState ==
                          ThemeModeState.dark
                      ? Colors.white
                      : Colors.black,
                ),
                verticalSpace(8),
                AutoSizeText(
                  data.text,
                  textAlign: TextAlign.start,
                  maxLines: 1,
                  style: GoogleFonts.poppins(
                      fontSize: 16, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
