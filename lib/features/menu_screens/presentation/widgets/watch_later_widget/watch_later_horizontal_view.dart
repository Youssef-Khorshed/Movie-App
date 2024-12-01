import 'package:flutter/material.dart';
import 'package:movie_app/features/menu_screens/presentation/widgets/watch_later_widget/watch_later_custom_card.dart';

import '../../../../../core/utils/assets/app_images.dart';

class WatchLaterHorizontalView extends StatefulWidget {
  const WatchLaterHorizontalView({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _WatchLaterHorizontalViewState createState() =>
      _WatchLaterHorizontalViewState();
}

class _WatchLaterHorizontalViewState extends State<WatchLaterHorizontalView> {
  final PageController _pageController = PageController(viewportFraction: 0.7);
  double _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: PageView.builder(
        controller: _pageController,
        itemCount: 10,
        itemBuilder: (context, index) {
          double scale = (_currentPage - index).abs().clamp(0.0, 1.0);
          double size = 1 - scale * 0.2; // تصغير حسب المسافة

          return Transform.scale(
            scale: size,
            child: const CustomCard(
              imageUrl: AppImages.movieBackground,
              title: 'Avengers: Endgame',
              rating: 0.9,
            ),
          );
        },
      ),
    );
  }
}
