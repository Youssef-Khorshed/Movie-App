import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movie_app/Core/Utils/Colors/app_colors.dart';
import 'package:movie_app/core/utils/Routing/app_routes.dart';
import 'package:movie_app/core/utils/assets/app_icons.dart';
import 'package:movie_app/core/utils/enums/theme_state.dart';
import 'package:movie_app/core/utils/styles/app_text_style.dart';
import 'package:movie_app/features/notification/notification_widget/custom_noitifcationcard_notification.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:movie_app/features/settings/theme/cubit/theme_cubit.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gettheme(context) ? AppColors.white : AppColors.black2,
      appBar: AppBar(
        backgroundColor: gettheme(context) ? AppColors.white : AppColors.black2,
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset(AppIcons.back),
          color: AppColors.purple,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: AutoSizeText(AppLocalizations.of(context)!.notifications,
            style: gettheme(context)
                ? AppTextStyle.style20PurpleW700
                : AppTextStyle.style20WhiteW700),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: GestureDetector(
                onTap: () =>
                    {Navigator.pushNamed(context, AppRoutes.preferences)},
                child: SvgPicture.asset(AppIcons.settingnotification)),
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(7.0),
        children: [
          Row(
            children: [
              const Spacer(),
              TextButton(
                onPressed: () {
                  // Handle mark all as read
                },
                child: AutoSizeText(
                  AppLocalizations.of(context)!.mark_all_as_read,
                  style: gettheme(context)
                      ? AppTextStyle.style24WhiteW600
                      : AppTextStyle.style14Gray10W500,
                ),
              ),
            ],
          ),
          _buildSectionTitle(AppLocalizations.of(context)!.today),
          CustomNoitifcationcardNotification(
              title: 'New Movie!', subtitle: 'Details', isNew: true),
          CustomNoitifcationcardNotification(
              title: 'Another Movies!', subtitle: 'Details', isNew: true),
          const SizedBox(height: 16.0),
          _buildSectionTitle(AppLocalizations.of(context)!.yesterday),
          CustomNoitifcationcardNotification(
              title: 'New Update Avsailable',
              subtitle: 'A new update of the app is available',
              isNew: false),
          CustomNoitifcationcardNotification(
              title: 'Yesterday Movsie!', subtitle: 'Details', isNew: false),
          const SizedBox(height: 16.0),
          _buildSectionTitle(AppLocalizations.of(context)!.some_days_ago),
          CustomNoitifcationcardNotification(
              title: 'Old Movie!', subtitle: 'Details', isNew: false),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Row(
      children: [
        Expanded(
          child: AutoSizeText(
            title,
            style: AppTextStyle.style16Gray10W500,
          ),
        ),
        const Expanded(
          child: Divider(
            color: AppColors.purple,
            thickness: 2.0,
          ),
        ),
      ],
    );
  }

  bool gettheme(BuildContext context) {
    return context.watch<ThemeCubit>().themeModeState == ThemeModeState.light;
  }
}
