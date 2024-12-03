import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:movie_app/features/App/screens/costume_app_widgets/costume_app_bar.dart';
import '../../../core/utils/Spacing/app_spacing.dart';
import '../../../core/utils/colors/app_colors.dart';
import '../widgets/all_movies_card_widget.dart';
import '../widgets/artist_actors_card_item_widget.dart';
import '../widgets/title_text_box_widget.dart';

class ActorsArtistScreen extends StatelessWidget {
  const ActorsArtistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: CustumeAppBar(
          isBack: true,
          title: AppLocalizations.of(context)!.actors_and_artists,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ArtistActorsCardItemWidget(),
            verticalSpace(10),
            TitleTextBox(
              title: AppLocalizations.of(context)!.trending,
            ),
            verticalSpace(6),
            const AllMoviesCardWidget(),
          ],
        ),
      ),
    );
  }
}
