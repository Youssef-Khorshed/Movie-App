import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie_app/core/utils/Spacing/app_spacing.dart';
import 'package:movie_app/core/utils/assets/app_icons.dart';
import 'package:movie_app/core/utils/colors/app_colors.dart';
import 'package:movie_app/core/utils/enums/theme_state.dart';
import 'package:movie_app/core/utils/styles/app_text_style.dart';
import 'package:movie_app/features/settings/theme/cubit/theme_cubit.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// ignore: must_be_immutable
class GradientChipList extends StatefulWidget {
  List<String> categories;
  GradientChipList({
    super.key,
    required this.categories,
  });

  @override
  // ignore: library_private_types_in_public_api
  _GradientChipListState createState() => _GradientChipListState();
}

class _GradientChipListState extends State<GradientChipList> {
  // Function to localize categories based on selected locale
  List<String> getLocalizedCategories(BuildContext context) {
    return widget.categories.map((category) {
      switch (category) {
        case 'Horror':
          return AppLocalizations.of(context)!.category_horror;
        case 'Action':
          return AppLocalizations.of(context)!.category_action;
        case 'Comedy':
          return AppLocalizations.of(context)!.category_comedy;
        case 'Crime':
          return AppLocalizations.of(context)!.category_crime;
        case 'Sci-Fi':
          return AppLocalizations.of(context)!.category_sci_fi;
        case 'Drama':
          return AppLocalizations.of(context)!.category_drama;
        default:
          return category;
      }
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    // Get localized categories
    List<String> localizedCategories = getLocalizedCategories(context);

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: 40,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        itemCount: localizedCategories.length,
        separatorBuilder: (context, _) => const SizedBox(width: 10),
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: ThemeCubit.get(context).themeModeState ==
                        ThemeModeState.light
                    ? [
                        AppColors.lightgray,
                        AppColors.purple,
                        AppColors.lightpurple
                      ]
                    : [AppColors.lightgray, AppColors.gray10, AppColors.gray6],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(10), // Rounded corners
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AutoSizeText(
                    localizedCategories[index],
                    style: AppTextStyle
                        .style12WhiteW400, // White text for visibility
                  ),
                  horizontalSpace(10),
                  GestureDetector(
                    child: SvgPicture.asset(AppIcons.remove),
                    onTap: () {
                      setState(() {
                        widget.categories.removeAt(index);
                      });
                    },
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
