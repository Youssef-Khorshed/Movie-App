import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/colors/app_colors.dart';
import 'package:movie_app/core/utils/enums/theme_state.dart';
import 'package:movie_app/core/utils/styles/app_text_style.dart';
import 'package:movie_app/features/Search/search_widgets/custom_itemsdropdown_filter.dart';
import 'package:movie_app/features/settings/theme/cubit/theme_cubit.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CategoryToggleButtons extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onChanged;

  const CategoryToggleButtons({
    super.key,
    required this.selectedIndex,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: ThemeCubit.get(context).themeModeState == ThemeModeState.light
            ? AppColors.purple
            : AppColors.black,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(Items.filtercategories.length, (index) {
          return GestureDetector(
            onTap: () => onChanged(index),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: selectedIndex == index
                      ? ThemeCubit.get(context).themeModeState ==
                              ThemeModeState.light
                          ? [AppColors.purple, AppColors.lightpurple]
                          : [AppColors.darkgray, AppColors.white]
                      : ThemeCubit.get(context).themeModeState ==
                              ThemeModeState.light
                          ? [
                              AppColors.white,
                              AppColors.gray4,
                            ]
                          : [
                              AppColors.gray5,
                              AppColors.white,
                            ],
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              child: AutoSizeText(
                _getLocalizedCategoryName(context, index),
                style: selectedIndex == index
                    ? AppTextStyle.style12WhiteW400
                    : AppTextStyle.style12BlackW400,
              ),
            ),
          );
        }),
      ),
    );
  }

  String _getLocalizedCategoryName(BuildContext context, int categoryKey) {
    switch (Items.filtercategories[categoryKey]) {
      case 'All':
        return AppLocalizations.of(context)!.category_all;
      case 'Movie':
        return AppLocalizations.of(context)!.category_movie;
      case 'Series':
        return AppLocalizations.of(context)!.category_series;
      default:
        return Items.filtercategories[categoryKey];
    }
  }
}
