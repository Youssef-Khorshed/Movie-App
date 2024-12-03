import 'package:flutter/material.dart';

import '../../../core/utils/colors/app_colors.dart';

class TrendingMoviesCardItemWidget extends StatelessWidget {
  final String image;
  const TrendingMoviesCardItemWidget({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Container(
        width: MediaQuery.of(context).size.width / 2.5,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13),
            gradient: AppColors.backgroundGradientColors2,
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.fill,
              scale: 200,
            )),
      ),
    );
  }
}
