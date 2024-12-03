import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/colors/app_colors.dart';
import '../../../../core/utils/enums/theme_state.dart';
import '../../../settings/theme/cubit/theme_cubit.dart';
import '../widgets/movie_download_widget/movie_download_body.dart';

class MovieDownloadPage extends StatelessWidget {
  const MovieDownloadPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          ThemeCubit.get(context).themeModeState == ThemeModeState.dark
              ? AppColors.black2
              : AppColors.white,
      body: const MovieDownloadBody(),
    );
  }
}
