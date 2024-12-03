import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/enums/theme_state.dart';
import 'package:movie_app/core/utils/styles/app_text_style.dart';
import 'package:movie_app/features/Search/search_widgets/custom_itemsdropdown_filter.dart';
import 'package:movie_app/features/Search/search_widgets/custom_ratingbarwidgets_filter.dart';
import 'package:movie_app/features/settings/theme/cubit/theme_cubit.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CustomRatingbarFilter extends StatefulWidget {
  const CustomRatingbarFilter({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CustomRatingbarFilterState createState() => _CustomRatingbarFilterState();
}

class _CustomRatingbarFilterState extends State<CustomRatingbarFilter> {
  double _currentValueMin = 7;
  double _currentValueMax = 10;

  @override
  Widget build(BuildContext context) {
    final themeMode = ThemeCubit.get(context).themeModeState;
    final localizedStrings = AppLocalizations.of(context)!;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25.0),
      decoration: _buildBoxDecoration(themeMode),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(localizedStrings, themeMode),
          buildRangeSlider(_currentValueMin, _currentValueMax, (values) {
            setState(() {
              _currentValueMin = values.start;
              _currentValueMax = values.end;
            });
          }),
        ],
      ),
    );
  }

  BoxDecoration _buildBoxDecoration(ThemeModeState themeMode) {
    return BoxDecoration(
      gradient: themeMode == ThemeModeState.light
          ? Items.dropDownGraid
          : Items.dropDownDarkGraid,
      borderRadius: BorderRadius.circular(12.0),
    );
  }

  Row _buildHeader(
      AppLocalizations localizedStrings, ThemeModeState themeMode) {
    return Row(
      children: [
        _buildHeaderText(localizedStrings.rating, themeMode),
        const Spacer(),
        buildRangeText(localizedStrings, _currentValueMin, _currentValueMax),
      ],
    );
  }

  AutoSizeText _buildHeaderText(String text, ThemeModeState themeMode) {
    return AutoSizeText(
      text,
      style: themeMode == ThemeModeState.light
          ? AppTextStyle.style16BlackW400
          : AppTextStyle.style20WhiteW600,
    );
  }
}
