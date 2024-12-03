import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/utils/Spacing/app_spacing.dart';
import 'package:movie_app/core/utils/colors/app_colors.dart';
import 'package:movie_app/features/Menu/widgets/title_text_box_widget.dart';
import 'package:movie_app/features/home/movie_details.dart';
import 'package:movie_app/features/home/widgets/movieCarousel.dart';
import 'package:movie_app/features/home/widgets/carcusolsliderwidgt.dart';
import 'package:movie_app/features/home/widgets/latestseries.dart';
import 'package:movie_app/features/home/widgets/most_watched.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:movie_app/features/settings/theme/cubit/theme_cubit.dart';

import '../../core/utils/enums/theme_state.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                gradient: ThemeCubit.get(context).themeModeState ==
                        ThemeModeState.light
                    ? null
                    : AppColors.backgroundScreenDarkColors,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MovieDetails()));
                    },
                    child: TitleTextBox(
                      title: AppLocalizations.of(context)!.trending,
                    ),
                  ),
                  verticalSpace(5),
                  SizedBox(
                      height: height * .2, child: const CarouselWithScore()),
                  verticalSpace(10),
                  const TitleTextBox(
                    title: 'Most Watched',
                  ),
                  verticalSpace(5),
                  SizedBox(height: height * .3, child: const MostWatched()),
                  verticalSpace(10),
                  const TitleTextBox(
                    title: 'Latest Movies',
                  ),
                  verticalSpace(5),
                  SizedBox(height: height * .3, child: const MovieCarousel()),
                  verticalSpace(10),
                  const TitleTextBox(
                    title: 'Latest Series',
                  ),
                  verticalSpace(5),
                  SizedBox(height: height * .3, child: const Latestseries()),
                  verticalSpace(30),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
