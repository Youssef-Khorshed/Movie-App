import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/core/utils/Spacing/app_spacing.dart';
import 'package:movie_app/core/utils/colors/app_colors.dart';
import 'package:movie_app/core/utils/styles/app_text_style.dart';
import 'package:movie_app/features/App/screens/costume_app_widgets/costume_app_bar.dart';
import 'package:movie_app/features/settings/widgets/grid_view_section.dart';
import 'package:movie_app/features/settings/widgets/profile_picture.dart';
import "package:flutter_gen/gen_l10n/app_localizations.dart";

class ProfileSettingBody extends StatelessWidget {
  const ProfileSettingBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustumeAppBar(
            isBack: true,
            title: 'Profile Setting',
            textStyle: AppTextStyle.style20WBlackW600,
          ),
          verticalSpace(10),
          const ProfilePicture(),
          verticalSpace(25),
          AutoSizeText(
            'The name',
            style: AppTextStyle.style20WBlackW600,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            child: const GridViewSection(),
          ),
          TextButton(
            onPressed: () {},
            child: AutoSizeText(
              AppLocalizations.of(context)!.log_out,
              style: AppTextStyle.style20purpleW600,
            ),
          ),
        ],
      ),
    );
  }
}
