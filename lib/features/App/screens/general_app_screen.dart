import 'package:auto_size_text/auto_size_text.dart';
import 'package:day_night_themed_switch/day_night_themed_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie_app/features/Menu/screens/all_movies_screen.dart';
import 'package:movie_app/features/home/home.dart';
import 'package:movie_app/features/menu_screens/presentation/screens/watch_later_screen.dart';
import 'package:movie_app/features/notification/notification_screen.dart';
import '../../../core/utils/assets/app_icons.dart';
import '../../../core/utils/colors/app_colors.dart';
import '../../../core/utils/enums/theme_state.dart';
import '../../../core/utils/styles/app_text_style.dart';
import '../../menu_screens/presentation/screens/favorite.dart';
import '../../menu_screens/presentation/screens/movie_download_page.dart';
import '../../settings/theme/cubit/theme_cubit.dart';
import '../../settings/views/profile_setting_view.dart';
import 'costume_app_widgets/custom_app_drawer.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class GeneralAppScreen extends StatefulWidget {
  const GeneralAppScreen({super.key});

  @override
  State<GeneralAppScreen> createState() => _GeneralAppScreenState();
}

class _GeneralAppScreenState extends State<GeneralAppScreen> {
  int selctedIndex = 0;
  // Updated list with the correct number of screens
  List<Widget> screens = [
    const Home(),
    const WatchLaterScreen(),
    const MovieDownloadPage(),
    FavoritePage(),
    const AllMoviesScreen(),
    const ProfileSettingView(),
  ];

  // Corrected screen names to match the number of screens
  void onItemTap(int index) {
    setState(() {
      selctedIndex = index;
    });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    List<String> names = [
      "",
      AppLocalizations.of(context)!.watch_later,
      AppLocalizations.of(context)!.download,
      AppLocalizations.of(context)!.favorite,
      AppLocalizations.of(context)!.actors_and_artists,
      AppLocalizations.of(context)!.settings,
    ];
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return Scaffold(
            backgroundColor:
                ThemeCubit.get(context).themeModeState == ThemeModeState.dark
                    ? AppColors.black2
                    : AppColors.white,
            appBar: AppBar(
              elevation: 0,
              leading: Builder(builder: (context) {
                return IconButton(
                  icon: SvgPicture.asset(AppIcons.menu),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                );
              }),
              title: selctedIndex == 3
                  ? Row(
                      children: [
                        AutoSizeText(
                          names[selctedIndex],
                          style: ThemeCubit.get(context).themeModeState ==
                                  ThemeModeState.dark
                              ? AppTextStyle.style18WhiteW500
                              : AppTextStyle.style18WhiteW500
                                  .copyWith(color: AppColors.black),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: GestureDetector(
                            child: SvgPicture.asset(
                              AppIcons.favorite,
                              colorFilter: const ColorFilter.mode(
                                  AppColors.purple2, BlendMode.srcIn),
                              height: 20,
                              width: 20,
                            ),
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      const NotificationScreen()));
                            },
                          ),
                        ),
                      ],
                    )
                  : AutoSizeText(
                      names[selctedIndex],
                      style: ThemeCubit.get(context).themeModeState ==
                              ThemeModeState.dark
                          ? AppTextStyle.style18WhiteW500
                          : AppTextStyle.style18WhiteW500
                              .copyWith(color: AppColors.black),
                    ),
              centerTitle: true,
              backgroundColor:
                  ThemeCubit.get(context).themeModeState == ThemeModeState.dark
                      ? AppColors.black2
                      : AppColors.white,
              actions: selctedIndex == 0
                  ? [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: GestureDetector(
                          child: SvgPicture.asset(AppIcons.notification),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    const NotificationScreen()));
                          },
                        ),
                      ),
                      SizedBox(
                          width: 55,
                          child: DayNightSwitch(
                              value: ThemeCubit.get(context).themeModeState ==
                                  ThemeModeState.dark,
                              onChanged: (e) {
                                print("change theme $e");
                                ThemeCubit.get(context).changeTheme();
                              })),
                      const SizedBox(width: 10),
                    ]
                  : [],
            ),
            drawer: CustomAppDrawer(
              onItemTap: (index) => onItemTap(index),
              selectedIndex: selctedIndex,
            ),
            body: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: screens[selctedIndex],
            ));
      },
    );
  }
}
