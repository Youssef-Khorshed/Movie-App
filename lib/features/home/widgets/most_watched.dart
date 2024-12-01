import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../../core/utils/colors/app_colors.dart';

class MostWatched extends StatelessWidget {
  const MostWatched({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 290,
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
      child: CarouselSlider.builder(
        itemCount: 3,
        itemBuilder: (context, index, realIndex) {
          return Stack(
            children: [
              // Image
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  getImageUrl(index),
                  width: 230,
                  height: 244.4,
                  fit: BoxFit.cover,
                ),
              ),

              // Movie Rating
              Positioned(
                top: 20,
                right: 20,
                child: Container(
                  width: 65,
                  height: 40,
                  decoration: BoxDecoration(
                    color: const Color(0xffDADADA).withOpacity(0.30),
                    borderRadius: BorderRadius.circular(10),
                    gradient: const LinearGradient(
                      colors: [
                        AppColors.white,
                        AppColors.white,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 16,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        getMovieRating(index),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Movie Name
              Positioned(
                bottom: 50,
                left: 10,
                right: 10,
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  decoration: BoxDecoration(
                    color: const Color(0xffDADADA).withOpacity(0.30),
                    borderRadius: BorderRadius.circular(10),
                    gradient: const LinearGradient(
                      colors: [
                        AppColors.white,
                        AppColors.white,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Text(
                    getMovieName(index),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          );
        },
        options: CarouselOptions(
          height: 280,
          enableInfiniteScroll: true,
          enlargeCenterPage: true,
          viewportFraction: 0.5,
          aspectRatio: 15 / 9,
        ),
      ),
    );
  }

  String getImageUrl(int index) {
    switch (index) {
      case 0:
        return 'https://s3-alpha-sig.figma.com/img/d618/ca10/f409069af36f16618aba0324abefabbb?Expires=1733702400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=S7LVbgOgv0W4QjgfPGAytkvrLvrSHL2npIL1dfgZtntOslrK6CzeWrdl7ArOc0n0xk81d2I6JEZeMTyBEpkjJuCLNwBu0XzRxRBu9QDz-MDdSWVqaqCrS8o7wefjMY98xY9xZFak7Fftra8HlszsXBjrdnFW7L~k4HaTpzY5xb7S4YOaqe2e4cwhjlqCU~lf0GsKl3jyaJVTxcuzI9bQ9kXZGXZURGTUtdO6xRXeScTIGg-e8dbqrufNEtDadXp-ZSt3WwKoWhSP8nUWLoRoefcWOhLlSuOV4YABRfXGuuRLo-npahG4W52FvW-sVDJpJNVD34d1d3nETkY~7dVMcQ__';
      case 1:
        return 'https://s3-alpha-sig.figma.com/img/d618/ca10/f409069af36f16618aba0324abefabbb?Expires=1733702400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=S7LVbgOgv0W4QjgfPGAytkvrLvrSHL2npIL1dfgZtntOslrK6CzeWrdl7ArOc0n0xk81d2I6JEZeMTyBEpkjJuCLNwBu0XzRxRBu9QDz-MDdSWVqaqCrS8o7wefjMY98xY9xZFak7Fftra8HlszsXBjrdnFW7L~k4HaTpzY5xb7S4YOaqe2e4cwhjlqCU~lf0GsKl3jyaJVTxcuzI9bQ9kXZGXZURGTUtdO6xRXeScTIGg-e8dbqrufNEtDadXp-ZSt3WwKoWhSP8nUWLoRoefcWOhLlSuOV4YABRfXGuuRLo-npahG4W52FvW-sVDJpJNVD34d1d3nETkY~7dVMcQ__';
      case 2:
        return 'https://s3-alpha-sig.figma.com/img/d618/ca10/f409069af36f16618aba0324abefabbb?Expires=1733702400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=S7LVbgOgv0W4QjgfPGAytkvrLvrSHL2npIL1dfgZtntOslrK6CzeWrdl7ArOc0n0xk81d2I6JEZeMTyBEpkjJuCLNwBu0XzRxRBu9QDz-MDdSWVqaqCrS8o7wefjMY98xY9xZFak7Fftra8HlszsXBjrdnFW7L~k4HaTpzY5xb7S4YOaqe2e4cwhjlqCU~lf0GsKl3jyaJVTxcuzI9bQ9kXZGXZURGTUtdO6xRXeScTIGg-e8dbqrufNEtDadXp-ZSt3WwKoWhSP8nUWLoRoefcWOhLlSuOV4YABRfXGuuRLo-npahG4W52FvW-sVDJpJNVD34d1d3nETkY~7dVMcQ__';
      default:
        return 'https://s3-alpha-sig.figma.com/img/d618/ca10/f409069af36f16618aba0324abefabbb?Expires=1733702400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=S7LVbgOgv0W4QjgfPGAytkvrLvrSHL2npIL1dfgZtntOslrK6CzeWrdl7ArOc0n0xk81d2I6JEZeMTyBEpkjJuCLNwBu0XzRxRBu9QDz-MDdSWVqaqCrS8o7wefjMY98xY9xZFak7Fftra8HlszsXBjrdnFW7L~k4HaTpzY5xb7S4YOaqe2e4cwhjlqCU~lf0GsKl3jyaJVTxcuzI9bQ9kXZGXZURGTUtdO6xRXeScTIGg-e8dbqrufNEtDadXp-ZSt3WwKoWhSP8nUWLoRoefcWOhLlSuOV4YABRfXGuuRLo-npahG4W52FvW-sVDJpJNVD34d1d3nETkY~7dVMcQ__';
    }
  }

  String getMovieName(int index) {
    switch (index) {
      case 0:
        return 'Star Wars: The Last Jedi';
      case 1:
        return 'Avengers: Endgame';
      case 2:
        return 'Inception';
      default:
        return '';
    }
  }

  String getMovieRating(int index) {
    switch (index) {
      case 0:
        return '7.0';
      case 1:
        return '8.4';
      case 2:
        return '9.0';
      default:
        return '';
    }
  }
}
