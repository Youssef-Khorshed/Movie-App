import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/enums/theme_state.dart';
import 'package:movie_app/core/utils/styles/app_text_style.dart';
import 'package:movie_app/features/Search/search_widgets/custom_itemsdropdown_filter.dart';
import 'package:movie_app/features/settings/theme/cubit/theme_cubit.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CustomBuildbottomoptions extends StatefulWidget {
  const CustomBuildbottomoptions({super.key});

  @override
  State<CustomBuildbottomoptions> createState() =>
      _CustomBuildbottomoptionsState();
}

class _CustomBuildbottomoptionsState extends State<CustomBuildbottomoptions> {
  // Declare selectedSort as a member variable to retain its state across rebuilds
  String? selectedSort;

  @override
  Widget build(BuildContext context) {
    return _buildSortOptions();
  }

  Widget _buildSortOptions() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ThemeCubit.get(context).themeModeState == ThemeModeState.dark
            ? AutoSizeText(
                AppLocalizations.of(context)!.sort_by,
                style: AppTextStyle.style12WhiteW400,
              )
            : const SizedBox(),
        Container(
          decoration: BoxDecoration(
            gradient:
                ThemeCubit.get(context).themeModeState == ThemeModeState.light
                    ? Items.dropDownGraid
                    : Items.dropDownDarkGraid,
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Adjusted the padding to reduce space between radio buttons
              _rawBuildSortOptions(
                  title: AppLocalizations.of(context)!.sort_newest),
              _rawBuildSortOptions(
                  title: AppLocalizations.of(context)!.sort_popular),
            ],
          ),
        ),
      ],
    );
  }

  Widget _rawBuildSortOptions({required String title}) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Row(
        children: [
          AutoSizeText(
            title,
            style:
                ThemeCubit.get(context).themeModeState == ThemeModeState.light
                    ? AppTextStyle.style16BlackW400
                    : AppTextStyle.style20WhiteW600,
          ),
          const Spacer(),
          Radio(
            value: title,
            groupValue: selectedSort,
            onChanged: (value) {
              setState(() {
                selectedSort = value;
              });
            },
          ),
          //   act
        ],
      ),
    );
  }
}
