import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/Spacing/app_spacing.dart';
import 'package:movie_app/core/utils/enums/theme_state.dart';
import 'package:movie_app/core/utils/styles/app_text_style.dart';
import 'package:movie_app/features/Search/search_widgets/custom_dropdown_filter.dart';
import 'package:movie_app/features/Search/search_widgets/custom_itemsdropdown_filter.dart';
import 'package:movie_app/features/settings/theme/cubit/theme_cubit.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CustomDropdownlistFilter extends StatelessWidget {
  const CustomDropdownlistFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ThemeCubit.get(context).themeModeState == ThemeModeState.dark
            ? AutoSizeText(
                AppLocalizations.of(context)!
                    .filters, // Use localized string here
                style: AppTextStyle.style12WhiteW400,
              )
            : const SizedBox(),
        CustomDropDownFormField(
            items: Items.gender,
            name: AppLocalizations.of(context)!
                .gender, // Use localized string here
            bordercolor: Colors.transparent,
            gradient:
                ThemeCubit.get(context).themeModeState == ThemeModeState.light
                    ? Items.dropDownGraid
                    : Items.dropDownDarkGraid),
        verticalSpace(5),
        CustomDropDownFormField(
          items: Items.arabCountries,
          name: AppLocalizations.of(context)!
              .country, // Use localized string here
          bordercolor: Colors.transparent,
          gradient:
              ThemeCubit.get(context).themeModeState == ThemeModeState.light
                  ? Items.dropDownGraid
                  : Items.dropDownDarkGraid,
        ),
        verticalSpace(5),
        CustomDropDownFormField(
          items: Items.popularMovieStudios,
          name:
              AppLocalizations.of(context)!.studio, // Use localized string here
          bordercolor: Colors.transparent,
          gradient:
              ThemeCubit.get(context).themeModeState == ThemeModeState.light
                  ? Items.dropDownGraid
                  : Items.dropDownDarkGraid,
        ),
        verticalSpace(5),
        CustomDropDownFormField(
          items: Items.yearsList,
          name: AppLocalizations.of(context)!.year, // Use localized string here
          bordercolor: Colors.transparent,
          gradient:
              ThemeCubit.get(context).themeModeState == ThemeModeState.light
                  ? Items.dropDownGraid
                  : Items.dropDownDarkGraid,
        ),
        verticalSpace(5),
      ],
    );
  }
}
