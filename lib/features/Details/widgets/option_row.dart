import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/Spacing/app_spacing.dart';
import 'package:movie_app/features/Details/widgets/download_bottom_sheet.dart';
import 'package:movie_app/features/Details/widgets/option_circle_container.dart';

class OptionRow extends StatelessWidget {
  const OptionRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OptionCircleContainer(
          onPressed: () {
            showBottomSheet(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
              context: context,
              builder: (context) {
                return const DownloadBottomSheet();
              },
            );
          },
          svgPath: 'assets/icons/download_option.svg',
        ),
        horizontalSpace(35),
        const OptionCircleContainer(
          svgPath: 'assets/icons/heart_option.svg',
        ),
        horizontalSpace(35),
        const OptionCircleContainer(
          svgPath: 'assets/icons/share_option.svg',
        ),
      ],
    );
  }
}
