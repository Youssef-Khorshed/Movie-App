import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/Spacing/app_spacing.dart';
import 'package:movie_app/core/utils/colors/app_colors.dart';
import 'package:movie_app/features/Menu/widgets/title_text_box_widget.dart';
import 'package:movie_app/features/home/movie_details.dart';
import 'package:movie_app/features/home/widgets/MovieCarousel.dart';
import 'package:movie_app/features/home/widgets/carcusolsliderwidgt.dart';
import 'package:movie_app/features/home/widgets/latestseries.dart';
import 'package:movie_app/features/home/widgets/most_watched.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
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
            SizedBox(height: height * .2, child: const CarouselWithScore()),
            verticalSpace(10),
            TitleTextBox(
              title: AppLocalizations.of(context)!.most_watched,
            ),
            verticalSpace(5),
            SizedBox(height: height * .3, child: const MostWatched()),
            verticalSpace(10),
            TitleTextBox(
              title: AppLocalizations.of(context)!.latest_movies,
            ),
            verticalSpace(5),
            SizedBox(height: height * .3, child: const MovieCarousel()),
            verticalSpace(10),
            TitleTextBox(
              title: AppLocalizations.of(context)!.latest_series,
            ),
            verticalSpace(5),
            SizedBox(height: height * .4, child: const Latestseries()),
            verticalSpace(30),
          ],
        ),
      ),
    );
  }
}
