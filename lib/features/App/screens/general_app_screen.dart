import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie_app/features/menu_screens/presentation/screens/watch_later_screen.dart';
import '../../../core/utils/assets/app_icons.dart';
import '../../../core/utils/colors/app_colors.dart';
import '../../../core/utils/styles/app_text_style.dart';
import '../../menu_screens/presentation/screens/favorite.dart';
import '../../menu_screens/presentation/screens/movie_download_page.dart';
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
    const WatchLaterScreen(),
    const MovieDownloadPage(),
    FavoritePage(),
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
      AppLocalizations.of(context)!.watch_later,
      AppLocalizations.of(context)!.download,
      AppLocalizations.of(context)!.favorite,
      AppLocalizations.of(context)!.settings
    ];
    return Scaffold(
        backgroundColor: AppColors.white,
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
          title: AutoSizeText(
            names[selctedIndex],
            style:
                AppTextStyle.style18WhiteW500.copyWith(color: AppColors.black),
          ),
          centerTitle: true,
          backgroundColor: AppColors.white,
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
}
