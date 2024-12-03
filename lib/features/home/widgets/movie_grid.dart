import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:movie_app/core/utils/styles/app_text_style.dart';

class MovieGridCustom extends StatelessWidget {
  const MovieGridCustom({super.key});

  @override
  Widget build(BuildContext context) {
    const movieImage =
        'https://image.tmdb.org/t/p/w500/udDclJoHjfjb8Ekgsd4FDteOkCU.jpg';

    return SizedBox(
      height: 400, // Set a fixed height for the GridView
      child: GridView.custom(
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.all(8),
        gridDelegate: SliverStairedGridDelegate(
          crossAxisSpacing: 48,
          mainAxisSpacing: 24,
          startCrossAxisDirectionReversed: true,
          pattern: [
            const StairedGridTile(.5, 1),
            const StairedGridTile(0.5, 1),
            const StairedGridTile(0.5, 1),
            const StairedGridTile(0.5, 1),
          ],
        ),
        childrenDelegate: SliverChildBuilderDelegate(
          (context, index) => _buildTile(context, movieImage),
          childCount: 4, // Replace with the number of items in your list
        ),
      ),
    );
  }

  Widget _buildTile(BuildContext context, String imageUrl) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Stack(
          children: [
            // Movie Poster Image
            Image.network(
              imageUrl,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            // Star Rating
            Positioned(
              top: 8,
              left: 8,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: AutoSizeText(
                  '⭐ 8.7', // Replace with dynamic rating
                  style: AppTextStyle.style12WhiteW400
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
