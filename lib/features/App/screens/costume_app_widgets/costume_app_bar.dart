import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie_app/core/utils/assets/app_icons.dart';

class CustumeAppBar extends StatelessWidget {
  const CustumeAppBar({
    super.key,
    this.title,
    required this.isBack,
    this.onPressed,
    this.textStyle,
  });

  final String? title;
  final bool isBack;
  final TextStyle? textStyle;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      child: AppBar(
        elevation: 0,
        leading: isBack
            ? IconButton(
                icon: SvgPicture.asset(AppIcons.back),
                onPressed: () => Navigator.of(context).pop(),
              )
            : IconButton(
                icon: SvgPicture.asset(AppIcons.menu),
                onPressed: onPressed,
              ),
        title: AutoSizeText(
          title ?? "",
          style: textStyle,
        ),
        centerTitle: true,
      ),
    );
  }
}
