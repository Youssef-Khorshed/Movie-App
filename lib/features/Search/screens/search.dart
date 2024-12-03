import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie_app/core/utils/Routing/app_routes.dart';
import 'package:movie_app/core/utils/assets/app_icons.dart';
import 'package:movie_app/core/utils/assets/app_images.dart';
import 'package:movie_app/core/utils/colors/app_colors.dart';
import 'package:movie_app/core/utils/enums/theme_state.dart';
import 'package:movie_app/features/Search/model/movie_model.dart';
import 'package:movie_app/features/Search/search_widgets/custom_gridnet_chip_list_search.dart';
import 'package:movie_app/features/Search/search_widgets/custom_movie_grid_search.dart';
import 'package:movie_app/features/Search/search_widgets/custom_itemsdropdown_filter.dart';
import 'package:movie_app/features/Search/search_widgets/custom_search_bar_serch.dart';
import 'package:movie_app/features/settings/localization/cubit/local_cubit.dart';
import 'package:movie_app/features/settings/theme/cubit/theme_cubit.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<Movie> _filteredMovies = Items.movies; // Initially, display all movies

  void _applyFilter(String query) {
    setState(() {
      // Filter the movie list based on the search query
      _filteredMovies = Items.movies.where((movie) {
        return movie.title.toLowerCase().contains(query.toLowerCase()) ||
            movie.genre.toLowerCase().contains(query.toLowerCase());
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          ThemeCubit.get(context).themeModeState == ThemeModeState.light
              ? AppColors.white
              : AppColors.black2,
      body: SafeArea(
        child: Column(
          children: [
            // Search bar at the top of the screen
            SearchScreenBar(
              onSearch: (query) {
                _applyFilter(query); // Apply the filter when user searches
              },
              leadingIcon: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: LocalCubit.get(context).localization == const Locale("en")
                    ? SvgPicture.asset(AppIcons.back)
                    : Transform.rotate(
                        angle: 3.14159, // Rotate for RTL languages
                        child: SvgPicture.asset(AppIcons.back),
                      ),
              ),
              actionIcon: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.filter).then((_) {
                    setState(() {
                      _filteredMovies = Items.movies;
                    });
                  });
                },
                icon: Image.asset(AppImages.filter),
              ),
            ),

            GradientChipList(
                categories: Items.categories), // Category filter chips

            // Movie Grid, pass the filtered list of movies
            Expanded(
              child: MovieGrid(
                  movies: _filteredMovies), // Update movie list based on filter
            ),
          ],
        ),
      ),
    );
  }
}
