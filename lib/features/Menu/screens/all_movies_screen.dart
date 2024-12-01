import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/Spacing/app_spacing.dart';
import '../../../core/utils/colors/app_colors.dart';
import '../widgets/all_movies_card_widget.dart';
import '../widgets/title_text_box_widget.dart';
import '../widgets/trending_movies_card_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AllMoviesScreen extends StatefulWidget {
  const AllMoviesScreen({super.key});

  @override
  State<AllMoviesScreen> createState() => _AllMoviesScreenState();
}

class _AllMoviesScreenState extends State<AllMoviesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitleTextBox(
              title: AppLocalizations.of(context)!.trending,
            ),
            verticalSpace(6),
            const TrendingMoviesCardWidget(),
            verticalSpace(10),
            TitleTextBox(
              title: AppLocalizations.of(context)!.movies,
            ),
            verticalSpace(6),
            const AllMoviesCardWidget(),
          ],
        ),
      ),
    );
  }
}
