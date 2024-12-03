import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/Routing/app_routes.dart';
import '../../../core/utils/assets/app_images.dart';
import 'trending_movies_card_item_widget.dart';

class TrendingMoviesCardWidget extends StatefulWidget {
  const TrendingMoviesCardWidget({super.key});

  @override
  State<TrendingMoviesCardWidget> createState() =>
      _TrendingMoviesCardWidgetState();
}

class _TrendingMoviesCardWidgetState extends State<TrendingMoviesCardWidget> {
  final List<String> trendingMovies = [
    AppImages.cover,
    AppImages.medium,
    AppImages.medium,
    AppImages.cover,
    AppImages.medium,
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 3.7,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: trendingMovies.length,
        dragStartBehavior: DragStartBehavior.start,
        controller: PageController(viewportFraction: 1),
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () =>
                  Navigator.pushNamed(context, AppRoutes.actorsArtistScreen),
              child:
                  TrendingMoviesCardItemWidget(image: trendingMovies[index]));
        },
      ),
    );
  }
}
