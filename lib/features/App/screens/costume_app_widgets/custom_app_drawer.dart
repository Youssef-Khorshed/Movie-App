import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie_app/core/utils/assets/app_images.dart';
import 'package:movie_app/core/utils/styles/app_text_style.dart';
import 'package:movie_app/features/App/screens/costume_app_widgets/custom_app_button.dart';

import '../../../../Core/Utils/Colors/app_colors.dart';
import '../../../../Core/Utils/Spacing/app_spacing.dart';
import '../../../../core/utils/assets/app_icons.dart';

class CustomAppDrawer extends StatefulWidget {
  final int selectedIndex;
  final Function(int index) onItemTap;
  const CustomAppDrawer(
      {super.key, required this.selectedIndex, required this.onItemTap});

  @override
  State<CustomAppDrawer> createState() => _CustomAppDrawerState();
}

class _CustomAppDrawerState extends State<CustomAppDrawer> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width * 0.7,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [AppColors.white, AppColors.menuPurpleColor]),
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), bottomRight: Radius.circular(20))),
      child: ListView(
          padding: EdgeInsets.only(
              top: height * 0.05, right: 5, left: 5, bottom: 10),
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage(AppImages.welcomeImage),
                    ),
                    verticalSpace(10),
                    AutoSizeText(
                      'Philobater samir',
                      style: AppTextStyle.style15WhiteW500
                          .copyWith(color: AppColors.black),
                    )
                  ],
                ),
                verticalSpace(30),
                ListTile(
                  minVerticalPadding: 0,
                  leading: SvgPicture.asset(AppIcons.home),
                  title: Text(
                    "Home",
                    style: AppTextStyle.style14Gray5W500
                        .copyWith(color: AppColors.black),
                  ),
                  trailing: const RotatedBox(
                    quarterTurns: 2,
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: AppColors.black,
                      size: 15,
                    ),
                  ),
                  selected: widget.selectedIndex == 0,
                  onTap: () => widget.onItemTap(0),
                ),
                Container(
                  height: 1,
                  color: AppColors.purple,
                ),
                ListTile(
                  minVerticalPadding: 0,
                  leading: SvgPicture.asset(AppIcons.watchLater),
                  title: Text(
                    "Watch Later",
                    style: AppTextStyle.style14Gray5W500
                        .copyWith(color: AppColors.black),
                  ),
                  trailing: const RotatedBox(
                    quarterTurns: 2,
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: AppColors.black,
                      size: 15,
                    ),
                  ),
                  selected: widget.selectedIndex == 1,
                  onTap: () => widget.onItemTap(1),
                ),
                Container(
                  height: 1,
                  color: AppColors.purple,
                ),
                ListTile(
                  minVerticalPadding: 0,
                  leading: SvgPicture.asset(AppIcons.download),
                  title: Text(
                    "Download",
                    style: AppTextStyle.style14Gray5W500
                        .copyWith(color: AppColors.black),
                  ),
                  trailing: const RotatedBox(
                    quarterTurns: 2,
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: AppColors.black,
                      size: 15,
                    ),
                  ),
                  selected: widget.selectedIndex == 2,
                  onTap: () => widget.onItemTap(2),
                ),
                Container(
                  height: 1,
                  color: AppColors.purple,
                ),
                ListTile(
                  minVerticalPadding: 0,
                  leading: SvgPicture.asset(AppIcons.favorite),
                  title: Text(
                    "Favorite Movies",
                    style: AppTextStyle.style14Gray5W500
                        .copyWith(color: AppColors.black),
                  ),
                  trailing: const RotatedBox(
                    quarterTurns: 2,
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: AppColors.black,
                      size: 15,
                    ),
                  ),
                  selected: widget.selectedIndex == 3,
                  onTap: () => widget.onItemTap(3),
                ),
                Container(
                  height: 1,
                  color: AppColors.purple,
                ),
                ListTile(
                  minVerticalPadding: 0,
                  leading: SvgPicture.asset(AppIcons.actors),
                  title: Text(
                    "Actors & Artists",
                    style: AppTextStyle.style14Gray5W500
                        .copyWith(color: AppColors.black),
                  ),
                  trailing: const RotatedBox(
                    quarterTurns: 2,
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: AppColors.black,
                      size: 15,
                    ),
                  ),
                  selected: widget.selectedIndex == 5,
                  onTap: () => widget.onItemTap(5),
                ),
                Container(
                  height: 1,
                  color: AppColors.purple,
                ),
                ListTile(
                  minVerticalPadding: 0,
                  leading: SvgPicture.asset(AppIcons.setting),
                  title: Text(
                    "Settings",
                    style: AppTextStyle.style14Gray5W500
                        .copyWith(color: AppColors.black),
                  ),
                  trailing: const RotatedBox(
                    quarterTurns: 2,
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: AppColors.black,
                      size: 15,
                    ),
                  ),
                  selected: widget.selectedIndex == 4,
                  onTap: () => widget.onItemTap(4),
                ),
              ],
            ),
          ]),
    );
  }
}
