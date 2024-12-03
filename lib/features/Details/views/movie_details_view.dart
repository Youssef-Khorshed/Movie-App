import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/Spacing/app_spacing.dart';
import 'package:movie_app/core/utils/colors/app_colors.dart';
import 'package:movie_app/core/utils/enums/theme_state.dart';
import 'package:movie_app/features/Details/widgets/custom_back_arrow.dart';
import 'package:movie_app/features/Details/widgets/details_custom_buttoon.dart';
import 'package:movie_app/features/Details/widgets/movie_cover.dart';
import 'package:movie_app/features/Details/widgets/movie_details_widget.dart';
import 'package:movie_app/features/Details/widgets/option_row.dart';
import 'package:movie_app/features/settings/theme/cubit/theme_cubit.dart';

class MovieDetailsView extends StatelessWidget {
  const MovieDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    bool isLight =
        ThemeCubit.get(context).themeModeState == ThemeModeState.light;
    return Scaffold(
      backgroundColor: AppColors.gray12,
      body: Column(
        children: [
          const Stack(
            children: [
              MovieCover(),
              Positioned(
                top: 40,
                left: 10,
                child: CustomBackArrow(),
              )
            ],
          ),
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: isLight ? AppColors.white : AppColors.black2,
                  spreadRadius: 30,
                  blurRadius: 30,
                  // offset: Offset(0, 1),
                )
              ],
              gradient: LinearGradient(
                  colors: isLight
                      ? [
                          AppColors.white,
                          AppColors.white,
                        ]
                      : [
                          AppColors.black2,
                          AppColors.black2,
                          AppColors.gray10,
                        ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter),
            ),
            child: Column(
              children: [
                verticalSpace(30),
                const MovieDetailsWidget(),
                verticalSpace(30),
                const OptionRow(),
                verticalSpace(40),
                const DetailsCustomButton(),
                // verticalSpace(10)s
              ],
            ),
          )
        ],
      ),
    );
  }
}

const String movieDetailsText =
    'This 2018 flick kicked off Sony’s Spider-Man Universe with a bang, and boy, was it a wild ride! Tom Hardy as Eddie Brock, a down-on-his-luck journalist, lost everything. Just when he thinks life can’t get any worse, BAM! He becomes the host for an alien symbiote named Venom. Talk about an unexpected roommate! This dynamic duo teams up to become a lethal protector, facing off against the evil Riot symbiote.........';
