import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/core/utils/styles/app_text_style.dart';

class WatchAgain extends StatelessWidget {
  const WatchAgain({super.key});

  @override
  Widget build(BuildContext context) {
    final movies = [
      {
        "title": "DareDevil",
        "year": "2023",
        "image":
            "https://s3-alpha-sig.figma.com/img/630a/95e1/ac610c24feb95af084fdab74a03b485f?Expires=1733702400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Mh1wvO6xkBlLka5w7~4kPHYQI35YBLOAA2tyQWYX~yO6gq1cufWFIcri5hvmVjAGO-AfqD~Q6Am0Qd~SiVDdusNzIEc7-o6TCV8Sh4jQbQOo9qkMuAds6jKh1qgkvRsaTVUBf3AoiIQJz6gB022X-~~BEZ0loP~NyQeaMO4j3-dhp7~weGbB0~Id7EXVEzAHcUwHwV2IMU~cSmD2tUW2U430P02hK6P5C40eqHyjXMYnl66qoJkN5lT8LJK0Q53YlymxeGvkOoMKAZ6ovx6GSD65DE2K4xd7wgPrqQqJJ6H4twk60ijc5FGbpNJ5QvM1fCwBcYh4zLNh22IpkX-Nug__",
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

    return Container(
      height: 300,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color(0xFFFFFFFF).withOpacity(0.90),
            const Color(0xFF6C52EE).withOpacity(0.60),
            const Color(0xFF828282).withOpacity(0.60),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: CarouselSlider(
        options: CarouselOptions(
          height: 280,
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
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 150,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      // color: Colors.redAccent,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        movie["image"]!,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      AutoSizeText(
                        "${movie["title"]!} ",
                        style: AppTextStyle.style14BlackW700,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      AutoSizeText(
                        "(${movie["year"]!})",
                        style: AppTextStyle.style12BlackW400,
                        
                      ),
                    ],
                  ),
                ],
              );
            },
          );
        }).toList(),
      ),
    );
  }
}
