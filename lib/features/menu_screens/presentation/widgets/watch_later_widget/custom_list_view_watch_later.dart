import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../../../core/utils/assets/app_images.dart';
import '../../../../../core/utils/styles/app_text_style.dart';
import '../../screens/favorite.dart';
import '../custom_card.dart';

class CustomListViewWatchLater extends StatelessWidget {
  const CustomListViewWatchLater({
    super.key,
    required this.movies,
  });

  final List<Map<String, dynamic>> movies;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: StaggeredGrid.count(
        crossAxisCount: 4,
        mainAxisSpacing: 20,
        crossAxisSpacing: 22,
        children: List.generate(
          10,
              (index) {
            return StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: (index) % 2 == 0 ? 2.8 : 2.6,
                child: const CustomCard(image: AppImages.movieBackground,text2: "2020",));
          },
        ),
      ),
    );
  }
}
