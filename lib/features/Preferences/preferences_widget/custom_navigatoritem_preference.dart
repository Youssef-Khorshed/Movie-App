// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/colors/app_colors.dart';
import 'package:movie_app/core/utils/enums/theme_state.dart';
import 'package:movie_app/core/utils/styles/app_text_style.dart';
import 'package:movie_app/features/Preferences/preferences_widget/custom_preferenceItem_preference.dart';
import 'package:movie_app/features/settings/theme/cubit/theme_cubit.dart';

// ignore: must_be_immutable
class CustomNavigatoritem extends StatefulWidget {
  String title;
  bool navigate;
  CustomNavigatoritem({
    super.key,
    this.navigate = true,
    required this.title,
  });

  @override
  State<CustomNavigatoritem> createState() => _CustomNavigatoritemState();
}

class _CustomNavigatoritemState extends State<CustomNavigatoritem> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.navigate
            ? Navigator.of(context).push(CupertinoPageRoute(
                builder: (context) => CustomPreferenceitem(
                      title: widget.title,
                    )))
            : showLogoutDialog(context, () {});
      },
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                  colors: ThemeCubit.get(context).themeModeState ==
                          ThemeModeState.light
                      ? [AppColors.lightgray, AppColors.purple]
                      : [AppColors.lightgray, AppColors.gray6])),
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              AutoSizeText(widget.title,
                  style: ThemeCubit.get(context).themeModeState ==
                          ThemeModeState.light
                      ? AppTextStyle.style20WBlackW400
                      : AppTextStyle.style20WhiteW400),
              const Spacer(),
            ],
          )),
    );
  }

  Future<void> showLogoutDialog(
      BuildContext context, VoidCallback onLogout) async {
    showDialog(
      context: context,
      barrierDismissible:
          false, // Prevent dismissing the dialog by tapping outside.
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Are you sure you want to log out?'),
          content:
              Text('You will need to log in again to access your account.'),
          actions: [
            // 'No' button to close the dialog
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text('No'),
            ),
            // 'Yes' button to log out
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
                onLogout(); // Perform the logout operation
              },
              child: Text('Yes'),
            ),
          ],
        );
      },
    );
  }
}
