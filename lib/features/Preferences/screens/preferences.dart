import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie_app/core/utils/Spacing/app_spacing.dart';
import 'package:movie_app/core/utils/assets/app_icons.dart';
import 'package:movie_app/core/utils/colors/app_colors.dart';
import 'package:movie_app/core/utils/enums/theme_state.dart';
import 'package:movie_app/core/utils/styles/app_text_style.dart';
import 'package:movie_app/features/Preferences/preferences_widget/custom_navigatoritem_preference.dart';
import 'package:movie_app/features/Preferences/preferences_widget/custom_switcheritem_preference.dart';
import 'package:movie_app/features/settings/localization/cubit/local_cubit.dart';
import 'package:movie_app/features/settings/theme/cubit/theme_cubit.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PreferencesScreen extends StatelessWidget {
  const PreferencesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          ThemeCubit.get(context).themeModeState == ThemeModeState.light
              ? AppColors.white
              : AppColors.black2,
      appBar: AppBar(
        elevation: 0,
        title: AutoSizeText(AppLocalizations.of(context)!.settings,
            style:
                ThemeCubit.get(context).themeModeState == ThemeModeState.light
                    ? AppTextStyle.style24BlackW600
                    : AppTextStyle.style24WhiteW600),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: LocalCubit.get(context).localization == const Locale("en")
                ? SvgPicture.asset(AppIcons.back)
                : Transform.rotate(
                    angle: 3.14159, child: SvgPicture.asset(AppIcons.back))),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(children: [
          CustomSwitcheritemWidget(
            title: AppLocalizations.of(context)!.notifications,
          ),
          verticalSpace(15),
          CustomSwitcheritemWidget(
            title: AppLocalizations.of(context)!.auto_play,
          ),
          verticalSpace(15),
          CustomSwitcheritemWidget(
            title: AppLocalizations.of(context)!.auto_full_screen,
          ),
          verticalSpace(15),
          CustomNavigatoritem(title: AppLocalizations.of(context)!.privacy),
          verticalSpace(15),
          CustomNavigatoritem(
              title: AppLocalizations.of(context)!.help_support),
          verticalSpace(15),
          CustomNavigatoritem(
              title: AppLocalizations.of(context)!.terms_and_policies),
          verticalSpace(15),
          CustomNavigatoritem(
              title: AppLocalizations.of(context)!.report_problem),
          verticalSpace(15),
          CustomNavigatoritem(title: AppLocalizations.of(context)!.about_us),
          verticalSpace(15),
          CustomNavigatoritem(
            title: AppLocalizations.of(context)!.log_out,
            navigate: false,
          ),
        ]),
      ),
    );
  }
}
