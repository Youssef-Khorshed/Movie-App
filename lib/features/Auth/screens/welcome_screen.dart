import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/Spacing/app_spacing.dart';
import 'package:movie_app/core/utils/assets/app_images.dart';
import 'package:movie_app/features/App/screens/costume_app_widgets/custom_app_button.dart';
import "package:flutter_gen/gen_l10n/app_localizations.dart";
import '../../../core/utils/Routing/app_routes.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              verticalSpace(height * .2),
              Center(
                child: Image.asset(
                  AppImages.welcomeImage,
                  height: height * .4,
                  width: width * .9,
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomAppButton(
                    width: MediaQuery.of(context).size.width / 2 - 20,
                    onPressed: () {
                      Navigator.pushNamed(context, AppRoutes.loginScreen);
                    },
                    buttonText: AppLocalizations.of(context)!.log_in,
                  ),
                  CustomAppButton(
                    width: MediaQuery.of(context).size.width / 2 - 20,
                    onPressed: () {
                      Navigator.pushNamed(context, AppRoutes.signUpScreen);
                    },
                    buttonText: AppLocalizations.of(context)!.sign_up,
                  ),
                ],
              ),
            ]),
      ),
    );
  }
}
