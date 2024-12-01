import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie_app/core/utils/assets/app_icons.dart';
import 'package:movie_app/core/utils/colors/app_colors.dart';
import 'package:movie_app/core/utils/enums/theme_state.dart';
import 'package:movie_app/core/utils/styles/app_text_style.dart';
import 'package:movie_app/features/settings/theme/cubit/theme_cubit.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CustomTextfiledsearchSearch extends StatefulWidget {
  final Function(String)? onSearch;
  final bool isEnabled; // Add this parameter

  const CustomTextfiledsearchSearch(
      {super.key, this.onSearch, required this.isEnabled});

  @override
  State<CustomTextfiledsearchSearch> createState() =>
      _CustomTextfiledsearchSearchState();
}

class _CustomTextfiledsearchSearchState
    extends State<CustomTextfiledsearchSearch> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors:
                ThemeCubit.get(context).themeModeState == ThemeModeState.light
                    ? [
                        AppColors.white,
                        AppColors.purple.withOpacity(0.4),
                      ]
                    : [
                        AppColors.white,
                        AppColors.darkgray.withOpacity(0.4),
                      ],
          ),
          borderRadius: BorderRadius.circular(24), // Optional: Rounded corners
        ),
        child: TextField(
          controller: _searchController,
          style: AppTextStyle.style12Gray9W400, // Text style
          onChanged: widget.isEnabled
              ? (query) {
                  widget.onSearch!(query); // Call the onSearch function
                }
              : null, // Disable onChanged if not enabled

          enabled: widget.isEnabled, // Enable/disable the TextField

          decoration: InputDecoration(
            prefixIcon: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: SvgPicture.asset(
                AppIcons.search, // Icon asset path
              ),
            ),
            hintText: AppLocalizations.of(context)!.enter_text_here,
            hintStyle:
                ThemeCubit.get(context).themeModeState == ThemeModeState.light
                    ? AppTextStyle.style12Gray9W400
                    : AppTextStyle.style12LightGrayW400, // Hint text style
            border: InputBorder.none, // Remove default border
            contentPadding: const EdgeInsets.only(
                top: 16.0, bottom: 5), // Align text and icon
          ),
        ),
      ),
    );
  }
}
