import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/core/utils/Spacing/app_spacing.dart';
import 'package:movie_app/core/utils/colors/app_colors.dart';
import 'package:movie_app/features/settings/widgets/grid_view_section.dart';
import 'package:movie_app/features/settings/widgets/profile_picture.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ProfileSettingBody extends StatelessWidget {
  const ProfileSettingBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ProfilePicture(),
            verticalSpace(15),
            AutoSizeText(
              AppLocalizations.of(context)!.localeName,
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600, fontSize: 20),
            ),
            verticalSpace(25),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              child: const GridViewSection(),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Log Out',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: AppColors.purple),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
