import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/colors/app_colors.dart';
import 'package:movie_app/features/Search/model/movie_model.dart';

class Items {
  static const List<String> arabCountries = [
    'Egypt',
    'Iraq',
    'Kuwait',
    'Lebanon',
  ];
  static const List<String> gender = ['Male', 'Female'];
  static const List<String> popularMovieStudios = [
    'Walt Disney Studios',
    'Warner Bros. Pictures',
    'Universal Pictures',
  ];

  static final List<String> categories = [
    'Horror',
    'Action',
    'Comedy',
    'Crime',
    'Sci-Fi',
    'Drama'
  ];

  static final List<Movie> movies = List.generate(
    8,
    (index) => Movie(
      title: 'Joker',
      year: '2022',
      genre: 'Horror',
      imageUrl:
          'https://i.pinimg.com/236x/06/26/34/062634053fc91491506742833c6a48f2.jpg',
    ),
  );

  static final filtercategories = ['All', 'Movie', 'Series'];

  static List<String> yearsList = List<String>.generate(
    DateTime.now().year - 1998 + 1, // Calculate how many years are in the range
    (index) => (DateTime.now().year - index)
        .toString(), // Generate years from current year down to 1998
  );

  static final dropDownGraid = LinearGradient(
    colors: [
      AppColors.lightgray.withOpacity(0.6),
      AppColors.purple.withOpacity(0.4)
    ],
  );

  static final dropDownDarkGraid = LinearGradient(
    colors: [
      AppColors.lightgray.withOpacity(0.6),
      AppColors.gray6.withOpacity(0.4)
    ],
  );
}
