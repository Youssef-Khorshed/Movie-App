import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/colors/app_colors.dart';
import 'package:movie_app/core/utils/enums/theme_state.dart';
import 'package:movie_app/features/setting_view/widgets/change_password_view_body.dart';
import 'package:movie_app/features/settings/theme/cubit/theme_cubit.dart';

class ChangePasswordView extends StatelessWidget {
  const ChangePasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    bool isLight =
        ThemeCubit.get(context).themeModeState == ThemeModeState.light;
    return Scaffold(
      backgroundColor: isLight ? AppColors.white : AppColors.black2,
      body: const ChangePasswordViewBody(),
    );
  }
}
