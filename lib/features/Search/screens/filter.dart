import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie_app/core/utils/Routing/app_routes.dart';
import 'package:movie_app/core/utils/Spacing/app_spacing.dart';
import 'package:movie_app/core/utils/assets/app_icons.dart';
import 'package:movie_app/core/utils/colors/app_colors.dart';
import 'package:movie_app/core/utils/enums/theme_state.dart';
import 'package:movie_app/features/Search/search_widgets/custom_bottomButtons_filter.dart';
import 'package:movie_app/features/Search/search_widgets/custom_buildBottomOptions.dart';
import 'package:movie_app/features/Search/search_widgets/custom_dropdownList_filter.dart';
import 'package:movie_app/features/Search/search_widgets/custom_ratingbar_filter.dart';
import 'package:movie_app/features/Search/search_widgets/custom_toggoleButtons_filter.dart';
import 'package:movie_app/features/settings/theme/cubit/theme_cubit.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  int _selectedCategory = 0; // 0: All, 1: Movie, 2: Series
// Sorting option

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          ThemeCubit.get(context).themeModeState == ThemeModeState.light
              ? AppColors.white
              : AppColors.black2,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: SvgPicture.asset(AppIcons.back)),
                  const Spacer(),
                  IconButton(
                      onPressed: () => Navigator.of(context).pushNamed(
                            AppRoutes.preferences,
                          ),
                      icon: SvgPicture.asset(AppIcons.setting)),
                ],
              ),
              verticalSpace(10),
              // Category Toggle Buttons
              CategoryToggleButtons(
                selectedIndex: _selectedCategory,
                onChanged: (index) {
                  setState(() {
                    _selectedCategory = index;
                  });
                },
              ),
              verticalSpace(10),
              // Filters List
              Expanded(
                child: ListView(
                  children: [
                    // Category Dropdown
                    const CustomDropdownlistFilter(),
                    // Rating Slider
                    const CustomRatingbarFilter(),
                    verticalSpace(10),
                    // Sorting Options
                    const CustomBuildbottomoptions()
                  ],
                ),
              ),
              // Bottom Buttons
              const CustomBottombuttonsFilter(),
              verticalSpace(10),
            ],
          ),
        ),
      ),
    );
  }
}
