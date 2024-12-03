import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        height: 270,
        enableInfiniteScroll: true,
        enlargeCenterPage: false,
        autoPlay: false,
        viewportFraction: 0.4,
        autoPlayInterval: const Duration(seconds: 3),
      ),
      items: movies.map((movie) {
        return Builder(
          builder: (BuildContext context) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 5, left: 5),
                  child: Container(
                    width: 150,
                    height: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.redAccent,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        movie["image"]!,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "${movie["title"]!} ",
                      style: GoogleFonts.lato(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff000000),
                      ),
                    ),
                    Text(
                      "(${movie["year"]!})",
                      style: GoogleFonts.lato(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff000000),
                      ),
                    ),
                  ],
                )
              ],
            );
          },
        );
      }).toList(),
    );
  }
}
