import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/features/App/screens/costume_app_widgets/custom_app_button.dart';
import '../../../core/utils/Spacing/app_spacing.dart';
import '../../../core/utils/colors/app_colors.dart';
import '../../../core/utils/styles/app_text_style.dart';
import 'artist_actors_widget.dart';

class ArtistActorsCardItemWidget extends StatelessWidget {
  const ArtistActorsCardItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const ArtistActorsWidget(),
              horizontalSpace(20),
              SizedBox(
                width: MediaQuery.of(context).size.width / 2.5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomAppButton(
                      onPressed: () {},
                      buttonText: "Somerhalder",
                      secondaryColor: false,
                      textColor: AppColors.black,
                    ),
                    AutoSizeText(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut ",
                      style: AppTextStyle.style14Gray8W500Poppins,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 5,
                    ),
                  ],
                ),
              ),
            ]),
      ),
    );
  }
}
