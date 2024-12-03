import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/assets/app_images.dart';

class MovieCover extends StatelessWidget {
  const MovieCover({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            AppImages.movieBackground,
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
