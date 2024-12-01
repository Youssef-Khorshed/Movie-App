import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/core/utils/Spacing/app_spacing.dart';
import 'package:movie_app/core/utils/assets/app_icons.dart';
import 'package:movie_app/core/utils/colors/app_colors.dart';
import 'package:movie_app/core/utils/enums/theme_state.dart';
import 'package:movie_app/features/App/costume_widgets/costume_app_bar/costume_app_bar.dart';
import 'package:movie_app/features/App/costume_widgets/custom_app_button.dart';
import 'package:movie_app/features/App/costume_widgets/custom_text_form_field.dart';
import 'package:movie_app/features/setting_view/data/custom_app_form_field_data.dart';
import 'package:movie_app/features/setting_view/widgets/profile_picture.dart';
import 'package:movie_app/features/settings/theme/cubit/theme_cubit.dart';

class EditProfileView extends StatelessWidget {
  const EditProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    bool isLight =
        ThemeCubit.get(context).themeModeState == ThemeModeState.light;
    return Scaffold(
      backgroundColor: isLight ? AppColors.white : AppColors.black2,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustumeAppBar(
              isBack: true,
              title: 'Edit Profile',
              textStyle: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: isLight ? AppColors.black : AppColors.white),
            ),
            verticalSpace(20),
            Stack(
              clipBehavior: Clip.none,
              children: [
                const ProfilePicture(),
                Positioned(
                  bottom: -10,
                  right: 16,
                  child: Container(
                    height: 35,
                    width: 35,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.orange,
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        AppIcons.editImage,
                        height: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            verticalSpace(28),
            Text(
              'The name',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: isLight ? AppColors.black : AppColors.white),
            ),
            verticalSpace(28),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              separatorBuilder: (context, index) => verticalSpace(30),
              itemBuilder: (context, index) => CustomAppFormField(
                hintText: '',
                textFormFieldTitle:
                    CustomAppFormFieldData.titleOfEdidProfileInfo[index],
              ),
              itemCount: 6,
            ),
            const CustomAppFormField(
              hintText: '',
              textFormFieldTitle: 'Password',
              isPassword: true,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  'Change password',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: AppColors.gray8),
                ),
              ),
            ),
            verticalSpace(50),
            CustomAppButton(
              onPressed: () {},
              buttonColor1: isLight
                  ? AppColors.white5
                  : AppColors.black2.withValues(alpha: 2.5),
              width: 220,
              buttonText: 'Save Change',
              textColor: isLight ? AppColors.black : AppColors.white,
            )
          ],
        ),
      ),
    );
  }
}
