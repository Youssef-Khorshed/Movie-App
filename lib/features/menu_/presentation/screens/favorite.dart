import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:movie_app/features/App/screens/costume_app_widgets/costume_app_bar.dart';
import '../../../../core/utils/assets/app_images.dart';
import '../widgets/favorite_widget/custom_list_view_favorite.dart';

class FavoritePage extends StatelessWidget {
  final List<Map<String, dynamic>> movies = [
    {
      'title': 'Avengers: Endgame',
      'image': AppImages.movieBackground,
      'year': 2019
    },
    {'title': 'Soul', 'image': AppImages.medium, 'year': 2020},
    {'title': 'Mulan', 'image': AppImages.movieBackground, 'year': 2020},
    {'title': 'Knives Out', 'image': AppImages.movieBackground, 'year': 2019},
  ];

  FavoritePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustumeAppBar(
              title: AppLocalizations.of(context)!.favorite, isBack: true),
          Expanded(
              child: SingleChildScrollView(
                  child: CustomListViewFavorite(
            movies: movies,
          )))
        ],
      ),
    );
  }
}
