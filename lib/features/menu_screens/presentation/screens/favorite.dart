import 'package:flutter/material.dart';
import 'package:movie_app/features/settings/theme/cubit/theme_cubit.dart';
import '../../../../core/utils/assets/app_images.dart';
import '../../../../core/utils/colors/app_colors.dart';
import '../../../../core/utils/enums/theme_state.dart';
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
      backgroundColor: AppColors.white,
      body: Container(
        decoration: BoxDecoration(gradient:ThemeCubit.get(context).themeModeState == ThemeModeState.dark? AppColors.backgroundScreenDarkColors: null),
        child: Column(
          children: [
            Expanded(
                child: SingleChildScrollView(
                    child: CustomListViewFavorite(
              movies: movies,
            )))
          ],
        ),
      ),
    );
  }
}
