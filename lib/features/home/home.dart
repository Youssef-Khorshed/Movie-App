import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:day_night_themed_switch/day_night_themed_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/core/utils/colors/app_colors.dart';
import 'package:movie_app/features/home/widgets/MovieCarousel.dart';
import 'package:movie_app/features/home/widgets/banner.dart';
import 'package:movie_app/features/home/widgets/carcusolsliderwidgt.dart';
import 'package:movie_app/features/App/costume_widgets/custom_drawer.dart';
import 'package:movie_app/features/home/widgets/latestseries.dart';
import 'package:movie_app/features/home/widgets/most_watched.dart';
import 'package:movie_app/features/home/widgets/movie_grid.dart';
import 'package:movie_app/features/home/widgets/watch_again.dart';

import '../../core/utils/assets/app_icons.dart';
import '../notification/notification.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Add drawer to the Scaffold
      drawer: CustomDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(
              Icons.menu,
              color: AppColors.purple,
            ),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        title: const Text("data"),
        centerTitle: true,
        actions: [
          GestureDetector(
            child: SvgPicture.asset(AppIcons.notification),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => NotificationScreen()));
            },
          ),
          SizedBox(
            height: 20,
            width: 40,
            child: DayNightSwitch(value: false, onChanged: (_) {}),
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 20),
                Bannermovie(text: 'Trending'),
              ],
            ),
            SizedBox(height: 10),
            CarouselWithScore(),
            SizedBox(height: 40),
            Row(
              children: [
                SizedBox(width: 20),
                Bannermovie(text: 'Most Watched'),
              ],
            ),
            SizedBox(height: 20),
            MostWatched(),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 20),
                Bannermovie(text: 'Latest Movies'),
              ],
            ),
            SizedBox(height: 20),
            MovieCarousel(),
            SizedBox(height: 10),
            Row(
              children: [
                SizedBox(width: 20),
                Bannermovie(text: 'Latest Series'),
              ],
            ),
            SizedBox(height: 10),
            Latestseries(),
            SizedBox(height: 10),
            Row(
              children: [
                SizedBox(width: 20),
                Bannermovie(text: 'Watch Later'),
              ],
            ),
            MovieGridCustom(),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 20),
                Bannermovie(text: 'Watch Again'),
              ],
            ),
            SizedBox(height: 20),
            WatchAgain(),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
