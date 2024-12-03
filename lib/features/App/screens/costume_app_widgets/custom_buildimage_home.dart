// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:movie_app/core/utils/colors/app_colors.dart';

// ignore: must_be_immutable
class CustomBuildimageHome extends StatelessWidget {
  double width;
  double height;
  String imageurl;
  CustomBuildimageHome({
    super.key,
    required this.width,
    required this.height,
    required this.imageurl,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageurl,
      fit: BoxFit.cover,
      width: width,
      height: height,
      errorWidget: (context, url, error) => const Icon(Icons.error),
      placeholder: (context, url) => Container(
        height: height,
        width: width,
        color: AppColors.lightgray,
      ),
    );
  }
}
