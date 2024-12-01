import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/colors/app_colors.dart';
import '../../../../core/utils/assets/app_images.dart';

import '../widgets/watch_later_widget/custom_list_view_watch_later.dart';
import '../widgets/watch_later_widget/watch_later_horizontal_view.dart';

class WatchLaterScreen extends StatefulWidget {
  const WatchLaterScreen({super.key});

  @override
  State<WatchLaterScreen> createState() => _WatchLaterScreenState();
}

PageController pageController = PageController(viewportFraction: 0.7);

class _WatchLaterScreenState extends State<WatchLaterScreen> {
  final List<Map<String, dynamic>> movies = [
    {
      'title': 'Avengers: Endgame',
      'image': AppImages.movieBackground,
      'year': 2019
    },
    {'title': 'Soul', 'image': AppImages.medium, 'year': 2020},
    {'title': 'Mulan', 'image': AppImages.movieBackground, 'year': 2020},
    {'title': 'Knives Out', 'image': AppImages.movieBackground, 'year': 2019},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        children: [
          Expanded(
            child: CustomScrollView(slivers: [
              const SliverToBoxAdapter(child: WatchLaterHorizontalView()),
              const SliverToBoxAdapter(
                  child: SizedBox(
                height: 40,
              )),
              SliverToBoxAdapter(
                  child: CustomListViewWatchLater(movies: movies)),
            ]),
          ),
        ],
      ),
    );
  }
}
