import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/styles/app_text_style.dart';
import 'package:movie_app/features/App/screens/costume_app_widgets/custom_buildimage_home.dart';

class Latestseries extends StatelessWidget {
  const Latestseries({super.key});

  @override
  Widget build(BuildContext context) {
    final movies = [
      {
        "title": "Secret Wars",
        "year": "2022",
        "image":
            "https://s3-alpha-sig.figma.com/img/b641/498f/f182d4e9456a98db173b965b7dff57f7?Expires=1733702400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=dcSGGId8Xhxd8V8DQjWpDVZo2RVzjbu1rdz~HYJ81YAhhcfS386cRnhJpH0rQ6v-twuDtag1uyDw1hdF5q1~nQ~h1qK94JA8awPER8XXqsWBLqI8uk6looDoa-gzNzTMBUbJ~SrpytbeTwuZyo23uV8bIXbcXZsAQfyoR2pOT1Zr11lt6ZzZq~5XPWwNU1JN7nkF~L6JyIBjPTxoGaVcJzoC0yModnnGarErnWQUspxYkdK-RmDJxSgzVtvlMec7PYTKNL~LoKifdq~I6VnbVVI~kl09RkPU-fJDwAD2LvWAq8him2Ql9NTbJ-l5xppm9AUpzBuIF0xiTlEYgHDW2Q__",
      },
      {
        "title": "Avengers Endgame",
        "year": "2019",
        "image":
            "https://m.media-amazon.com/images/I/71niXI3lxlL._AC_SY679_.jpg",
      },
      {
        "title": "Black Panther",
        "year": "2018",
        "image":
            "https://s3-alpha-sig.figma.com/img/b641/498f/f182d4e9456a98db173b965b7dff57f7?Expires=1733702400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=dcSGGId8Xhxd8V8DQjWpDVZo2RVzjbu1rdz~HYJ81YAhhcfS386cRnhJpH0rQ6v-twuDtag1uyDw1hdF5q1~nQ~h1qK94JA8awPER8XXqsWBLqI8uk6looDoa-gzNzTMBUbJ~SrpytbeTwuZyo23uV8bIXbcXZsAQfyoR2pOT1Zr11lt6ZzZq~5XPWwNU1JN7nkF~L6JyIBjPTxoGaVcJzoC0yModnnGarErnWQUspxYkdK-RmDJxSgzVtvlMec7PYTKNL~LoKifdq~I6VnbVVI~kl09RkPU-fJDwAD2LvWAq8him2Ql9NTbJ-l5xppm9AUpzBuIF0xiTlEYgHDW2Q__",
      },
    ];

    return CarouselSlider(
      options: CarouselOptions(
        height: 260,
        enableInfiniteScroll: true,
        enlargeCenterPage: false,
        autoPlay: false,
        viewportFraction: 0.4,
        autoPlayInterval: const Duration(seconds: 3),
        padEnds: false,
        enlargeStrategy: CenterPageEnlargeStrategy.scale,
      ),
      items: movies.map((movie) {
        return Builder(
          builder: (BuildContext context) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: CustomBuildimageHome(
                      width: 160,
                      height: 220,
                      imageurl: movie["image"]!,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: AutoSizeText(
                          movie["title"]!,
                          style: AppTextStyle.style16BlackW500,
                          maxLines: 1,
                          overflow:
                              TextOverflow.ellipsis, // Prevents text overflow
                        ),
                      ),
                      AutoSizeText(
                        "(${movie["year"]!})",
                        style: AppTextStyle.style12BlackW400,
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
