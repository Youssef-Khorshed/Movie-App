import 'package:flutter/material.dart';

import '../../../core/utils/assets/app_images.dart';
import '../../../core/utils/colors/app_colors.dart';

class ArtistActorsWidget extends StatelessWidget {
  const ArtistActorsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: AppColors.backgroundGradientColors2,
            image: const DecorationImage(
              image: AssetImage(
                AppImages.medium,
              ),
              fit: BoxFit.fill,
              scale: 200,
            )),
      ),
    );
  }
}
