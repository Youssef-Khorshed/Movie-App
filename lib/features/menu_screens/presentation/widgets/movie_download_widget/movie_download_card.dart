import 'package:flutter/material.dart';
import 'package:movie_app/features/settings/theme/cubit/theme_cubit.dart';

import '../../../../../core/utils/assets/app_images.dart';
import '../../../../../core/utils/colors/app_colors.dart';
import '../../../../../core/utils/enums/theme_state.dart';
import '../../../../../core/utils/styles/app_text_style.dart';

class MovieDownloadCard extends StatelessWidget {
  const MovieDownloadCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 212,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: ThemeCubit.get(context).themeModeState == ThemeModeState.dark
            ? const LinearGradient(
                colors: [AppColors.black2, AppColors.gray1],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              )
            : const LinearGradient(
                colors: [AppColors.purpleblue, AppColors.white],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                height: 160,
                width: 95,
                AppImages.movieBackground,
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(width: 16),
          // المعلومات والأزرار
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Joker', style: AppTextStyle.style20WhiteW400),
                const SizedBox(height: 8),
                Text(
                  '2022, Horror',
                  style: AppTextStyle.style13WhiteW400,
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 99,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: ThemeCubit.get(context).themeModeState ==
                                ThemeModeState.dark
                            ? const LinearGradient(
                                colors: [AppColors.purple2, AppColors.gray1],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              )
                            : const LinearGradient(
                                colors: [AppColors.purpleblue, AppColors.white],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                      ),
                      child: Center(
                          child: Text(
                        'Watch',
                        style: AppTextStyle.style14WhiteW400,
                      )),
                    ),
                    const SizedBox(width: 16),
                    Container(
                        height: 40,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: ThemeCubit.get(context).themeModeState ==
                                  ThemeModeState.dark
                              ? const LinearGradient(
                                  colors: [AppColors.purple2, AppColors.gray1],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                )
                              : const LinearGradient(
                                  colors: [
                                    AppColors.purple,
                                    AppColors.darkpurple
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                        ),
                        child:
                            const Icon(Icons.delete, color: AppColors.white)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
