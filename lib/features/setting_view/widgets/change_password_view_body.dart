import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/core/utils/Spacing/app_spacing.dart';
import 'package:movie_app/core/utils/colors/app_colors.dart';
import 'package:movie_app/core/utils/enums/theme_state.dart';
import 'package:movie_app/features/App/costume_widgets/costume_app_bar/costume_app_bar.dart';
import 'package:movie_app/features/App/costume_widgets/custom_app_button.dart';
import 'package:movie_app/features/App/costume_widgets/custom_text_form_field.dart';
import 'package:movie_app/features/setting_view/data/custom_app_form_field_data.dart';
import 'package:movie_app/features/settings/theme/cubit/theme_cubit.dart';

class ChangePasswordViewBody extends StatelessWidget {
  const ChangePasswordViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isLight =
        ThemeCubit.get(context).themeModeState == ThemeModeState.light;
    return Column(
      children: [
        CustumeAppBar(
          isBack: true,
          title: 'CHANGE PASSWORD',
          textStyle: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontSize: 20,
              color: isLight ? AppColors.black : AppColors.white),
        ),
        verticalSpace(40),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            separatorBuilder: (context, index) => verticalSpace(30),
            itemBuilder: (context, index) => CustomAppFormField(
              prefixIcon: Icons.key,
              obscureText: true,
              isPassword: true,
              hintText: '',
              textFormFieldTitle:
                  CustomAppFormFieldData.titleOfChangePssword[index],
            ),
            itemCount: 3,
          ),
        ),
        verticalSpace(30),
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
    );
  }
}
