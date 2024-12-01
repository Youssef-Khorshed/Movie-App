import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/assets/app_animation.dart';
import 'package:movie_app/features/Search/model/movie_model.dart';
import 'package:movie_app/features/Search/search_widgets/custom_movie_card_search.dart';
import 'package:lottie/lottie.dart';

class MovieGrid extends StatelessWidget {
  final List<Movie> movies;

  const MovieGrid({super.key, required this.movies});

  @override
  Widget build(BuildContext context) {
    return movies.isEmpty
        ? Lottie.asset(
            AppAnimation.notfound,
            fit: BoxFit.fitWidth,
            repeat: true, // Loop the animation
            reverse: true, // Play animation in reverse
            animate: true, // Whether the animation should animate or not
          )
        : GridView.builder(
            padding: const EdgeInsets.all(10),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 0.7,
            ),
            itemCount: movies.length,
            itemBuilder: (context, index) {
              return MovieCard(movie: movies[index]);
            },
          );
  }
}
