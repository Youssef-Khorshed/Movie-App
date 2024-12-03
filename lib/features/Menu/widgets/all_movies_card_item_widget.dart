import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/colors/app_colors.dart';
import '../../../core/utils/styles/app_text_style.dart';

class AllMoviesCardItemWidget extends StatelessWidget {
  final String image, movieTitle;
  final VoidCallback onTapMovieImage;
  const AllMoviesCardItemWidget(
      {super.key,
      required this.image,
      required this.movieTitle,
      required this.onTapMovieImage});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: InkWell(
            onTap: onTapMovieImage,
            borderRadius: BorderRadius.circular(10),
            child: Card(
              elevation: 4,
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Container(
                width: MediaQuery.of(context).size.width / 2.5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: AppColors.backgroundGradientColors2,
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.fill,
                      scale: 200,
                    )),
              ),
            ),
          ),
        ),
        AutoSizeText(movieTitle, style: AppTextStyle.style14Gray8W500Poppins),
      ],
    );
  }
}
