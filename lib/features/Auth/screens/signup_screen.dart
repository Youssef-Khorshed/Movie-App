import 'package:flutter/material.dart';
import "package:flutter_gen/gen_l10n/app_localizations.dart";
import '../../../core/utils/Routing/app_routes.dart';
import '../../../core/utils/Spacing/app_spacing.dart';
import '../../App/screens/costume_app_widgets/costume_app_bar.dart';
import '../../App/screens/costume_app_widgets/custom_app_button.dart';
import '../../App/screens/costume_app_widgets/custom_text_form_field.dart';
import '../widgets/custom_auth_subtitle_widget.dart';
import '../widgets/custom_auth_title_widget.dart';
import '../widgets/custom_background_continer.dart';
import '../widgets/custom_text_row_widget.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: CustumeAppBar(
            isBack: true,
            // title: AppLocalizations.of(context)!.sign_up,
          ),
        ),
        body: Align(
          alignment: Alignment.bottomCenter,
          child: CustomBackgroundContiner(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  verticalSpace(20),
                  const CustomAuthTitleWidget(
                    title: "Get Started Free",
                  ),
                  verticalSpace(10),
                  const CustomAuthSubtitleWidget(
                    subtitle: "Free Forever. No Credit Card Needed",
                  ),
                  verticalSpace(25),
                  CustomAppFormField(
                    textFormFieldTitle:
                        AppLocalizations.of(context)!.email_address,
                    hintText:
                        AppLocalizations.of(context)!.enter_your_email_address,
                    prefixIcon: Icons.person_2_outlined,
                  ),
                  CustomAppFormField(
                    textFormFieldTitle: AppLocalizations.of(context)!.username,
                    hintText: AppLocalizations.of(context)!.enter_your_username,
                    prefixIcon: Icons.person_2_outlined,
                  ),
                  verticalSpace(10),
                  CustomAppFormField(
                    textFormFieldTitle: AppLocalizations.of(context)!.password,
                    hintText: AppLocalizations.of(context)!.enter_your_password,
                    prefixIcon: Icons.password,
                    isPassword: true,
                    obscureText: true,
                  ),
                  verticalSpace(10),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 1.1,
                    child: CustomAppButton(
                      onPressed: () {
                        Navigator.pushNamed(context, AppRoutes.generalScreen);
                      },
                      buttonText: AppLocalizations.of(context)!.sign_up,
                    ),
                  ),
                  verticalSpace(5),
                  CustomTextRowWidget(
                    firstTitle: AppLocalizations.of(context)!.have_an_account,
                    secTitle: AppLocalizations.of(context)!.log_in,
                    onTap: () {
                      Navigator.pushReplacementNamed(
                          context, AppRoutes.loginScreen);
                    },
                  ),
                  verticalSpace(MediaQuery.of(context).size.height * 0.05)
                ],
              ),
            ),
          ),
        ));
  }
}
