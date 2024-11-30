import 'package:flutter/material.dart';

import '../../../core/utils/colors/app_colors.dart';

class CustomBackgroundContiner extends StatelessWidget {
  final Widget child;
  const CustomBackgroundContiner({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.35,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        gradient: AppColors.backgroundGradientColors,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(60),
          topRight: Radius.circular(60),
        ),
      ),
      child: child,
    );
  }
}
