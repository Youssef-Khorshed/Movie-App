import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/Spacing/app_spacing.dart';
import 'package:movie_app/features/App/screens/costume_app_widgets/costume_app_bar.dart';
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
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: CustumeAppBar(
          isBack: true,
          title: AppLocalizations.of(context)!.movies,
        ),
      ),
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
