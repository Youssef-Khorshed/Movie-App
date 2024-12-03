import 'package:auto_size_text/auto_size_text.dart';
import 'package:day_night_themed_switch/day_night_themed_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie_app/core/utils/Spacing/app_spacing.dart';
import 'package:movie_app/features/Menu/screens/all_movies_screen.dart';
import 'package:movie_app/features/Search/screens/search.dart';
import 'package:movie_app/features/Search/search_widgets/custom_search_bar_serch.dart';
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

    return Scaffold(
        backgroundColor: gettheme(context) ? AppColors.white : AppColors.black,
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
          title: selctedIndex == 0
              ? GestureDetector(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const SearchScreen())),
                  child: SizedBox(
                    width: double.infinity,
                    child: SearchScreenBar(
                      isenabled: false,
                    ),
                  ),
                )
              : AutoSizeText(
                  names[selctedIndex],
                  style: gettheme(context)
                      ? AppTextStyle.style18WhiteW500
                      : AppTextStyle.style18WhiteW500
                          .copyWith(color: AppColors.black),
                ),
          centerTitle: true,
          backgroundColor: gettheme(context) ? null : AppColors.black,
          actions: selctedIndex == 0
              ? [
                  GestureDetector(
                    child: SvgPicture.asset(AppIcons.notification),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const NotificationScreen()));
                    },
                  ),
                  horizontalSpace(10),
                  SizedBox(
                      width: 55,
                      child: DayNightSwitch(
                          value: ThemeCubit.get(context).themeModeState ==
                              ThemeModeState.dark,
                          onChanged: (e) {
                            ThemeCubit.get(context).changeTheme();
                          })),
                  horizontalSpace(10),
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
  }

  bool gettheme(BuildContext context) {
    return context.watch<ThemeCubit>().themeModeState == ThemeModeState.light;
  }
}
