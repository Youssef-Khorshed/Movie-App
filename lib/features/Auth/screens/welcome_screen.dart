import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/features/App/costume_widgets/custom_app_button.dart';
import "package:flutter_gen/gen_l10n/app_localizations.dart";

import '../../../core/utils/Routing/app_routes.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const AutoSizeText("Welcome Screen"),
        const AutoSizeText("This text will be change"),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomAppButton(
              width: MediaQuery.of(context).size.width / 2,
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.loginScreen);
              },
              buttonText: AppLocalizations.of(context)!.log_in,
            ),
            CustomAppButton(
              width: MediaQuery.of(context).size.width / 2,
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.signUpScreen);
              },
              buttonText: AppLocalizations.of(context)!.sign_up,
            ),
          ],
        ),
      ]),
    );
  }
}
