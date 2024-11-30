import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie_app/core/utils/assets/app_icons.dart';
import 'package:movie_app/core/utils/colors/app_colors.dart';
import 'package:movie_app/core/utils/enums/theme_state.dart';
import 'package:movie_app/core/utils/styles/app_text_style.dart';
import 'package:movie_app/features/settings/theme/cubit/theme_cubit.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SearchScreenBar extends StatefulWidget {
  final bool showLeading;
  final bool showTitle;
  final bool showActions;
  final IconButton? leadingIcon;
  final IconButton? actionIcon;
  final Function(String) onSearch;

  const SearchScreenBar({
    super.key,
    this.showLeading = true,
    this.showTitle = true,
    this.showActions = true,
    this.leadingIcon,
    this.actionIcon,
    required this.onSearch, // Add this to pass the search handler function
  });

  @override
  // ignore: library_private_types_in_public_api
  _SearchScreenBarState createState() => _SearchScreenBarState();
}

class _SearchScreenBarState extends State<SearchScreenBar> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          if (widget.showLeading && widget.leadingIcon != null)
            widget.leadingIcon!,
          if (widget.showTitle)
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: ThemeCubit.get(context).themeModeState ==
                            ThemeModeState.light
                        ? [
                            AppColors.white,
                            AppColors.purple.withOpacity(0.4),
                          ]
                        : [
                            AppColors.white,
                            AppColors.darkgray.withOpacity(0.4),
                          ],
                  ),
                  borderRadius:
                      BorderRadius.circular(24), // Optional: Rounded corners
                ),
                child: TextField(
                  controller: _searchController,
                  style: AppTextStyle.style12Gray9W400, // Text style
                  onChanged: (query) {
                    widget.onSearch(query); // Call the onSearch function
                  },
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: SvgPicture.asset(
                        AppIcons.search, // Icon asset path
                      ),
                    ),
                    hintText: AppLocalizations.of(context)!.enter_text_here,
                    hintStyle: ThemeCubit.get(context).themeModeState ==
                            ThemeModeState.light
                        ? AppTextStyle.style12Gray9W400
                        : AppTextStyle.style12LightGrayW400, // Hint text style
                    border: InputBorder.none, // Remove default border
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 12.0), // Align text and icon
                  ),
                ),
              ),
            ),
          if (widget.showActions && widget.actionIcon != null)
            widget.actionIcon!,
        ],
      ),
    );
  }
}
