import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/core/utils/Spacing/app_spacing.dart';
import 'package:movie_app/core/utils/colors/app_colors.dart';
import 'package:movie_app/features/App/costume_widgets/costume_app_bar/costume_app_bar.dart';
import 'package:movie_app/features/setting_view/widgets/grid_view_section.dart';
import 'package:movie_app/features/setting_view/widgets/profile_picture.dart';

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
            textStyle:
                GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 20),
          ),
          verticalSpace(10),
          const ProfilePicture(),
          verticalSpace(25),
          Text(
            'The name',
            style:
                GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 20),
          ),
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
    );
  }
}
