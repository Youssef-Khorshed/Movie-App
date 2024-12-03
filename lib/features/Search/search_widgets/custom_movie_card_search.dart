import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/colors/app_colors.dart';
import 'package:movie_app/core/utils/enums/theme_state.dart';
import 'package:movie_app/core/utils/styles/app_text_style.dart';
import 'package:movie_app/features/App/screens/costume_app_widgets/custom_buildimage_home.dart';
import 'package:movie_app/features/Search/model/movie_model.dart';
import 'package:movie_app/features/settings/theme/cubit/theme_cubit.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;

  const MovieCard({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
                colors: ThemeCubit.get(context).themeModeState ==
                        ThemeModeState.light
                    ? [AppColors.white, AppColors.purple.withOpacity(0.5)]
                    : [AppColors.gray4, AppColors.darkgray],
                begin: Alignment.topRight)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(10)),
                child: CustomBuildimageHome(
                    width: 200, height: 200, imageurl: movie.imageUrl),
              ),
            ),
            AutoSizeText(AppLocalizations.of(context)!.movie_title,
                style: AppTextStyle.style20WhiteW400),
            // Using localized strings for year and genre
            AutoSizeText(
              '${AppLocalizations.of(context)!.movie_year}: ${movie.year}',
              style: AppTextStyle.style12WhiteW400,
            ),
            AutoSizeText(
              '${AppLocalizations.of(context)!.movie_genre}: ${movie.genre}',
              style: AppTextStyle.style12WhiteW400,
            ),
          ],
        ),
      ),
    );
  }
}
