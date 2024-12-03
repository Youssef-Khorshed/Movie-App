import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/Spacing/app_spacing.dart';
import 'package:movie_app/core/utils/colors/app_colors.dart';
import 'package:movie_app/core/utils/enums/theme_state.dart';
import 'package:movie_app/core/utils/styles/app_text_style.dart';
import 'package:movie_app/features/Details/views/movie_details_view.dart';
import 'package:movie_app/features/Details/widgets/movie_name_and_rating_section.dart';
import 'package:movie_app/features/settings/theme/cubit/theme_cubit.dart';
import "package:flutter_gen/gen_l10n/app_localizations.dart";


class MovieDetailsWidget extends StatelessWidget {
  const MovieDetailsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isLight =
        ThemeCubit.get(context).themeModeState == ThemeModeState.light;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const MovieNameAndRatingSection(),
          verticalSpace(10),
          AutoSizeText(
            AppLocalizations.of(context)!.marvel_studios,
            style: AppTextStyle.style12WhitW400,
          ),
          verticalSpace(20),
          AutoSizeText(
            movieDetailsText,
            maxLines: 8,
            style: AppTextStyle.style14WhitW400
                .copyWith(color: isLight ? AppColors.black : AppColors.gray10),
          ),
        ],
      ),
    );
  }
}
