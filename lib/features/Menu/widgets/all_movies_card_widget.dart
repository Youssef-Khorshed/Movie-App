import 'package:flutter/material.dart';
import 'package:movie_app/features/Menu/widgets/all_movies_card_item_widget.dart';

import '../../../core/utils/Routing/app_routes.dart';
import '../../../core/utils/assets/app_images.dart';

class AllMoviesCardWidget extends StatefulWidget {
  const AllMoviesCardWidget({super.key});

  @override
  State<AllMoviesCardWidget> createState() => _AllMoviesCardWidgetState();
}

class _AllMoviesCardWidgetState extends State<AllMoviesCardWidget> {
  final List<String> trendingMovies = [
    AppImages.cover,
    AppImages.medium,
    AppImages.medium,
    AppImages.cover,
    AppImages.medium,
  ];
  final List<String> movieTitle = [
    "Spiderman",
    "soul",
    "medium",
    "spiderman",
    "soul"
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          childAspectRatio: .9,
        ),
        itemCount: trendingMovies.length,
        itemBuilder: (context, index) {
          return AllMoviesCardItemWidget(
            image: trendingMovies[index],
            onTapMovieImage: () {
              Navigator.pushNamed(context, AppRoutes.actorsArtistScreen);
            },
            movieTitle: movieTitle[index],
          );
        },
      ),
    );
  }
}
