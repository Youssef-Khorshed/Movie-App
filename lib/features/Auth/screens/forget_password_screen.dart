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

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: CustumeAppBar(
            isBack: true,
            //  title: AppLocalizations.of(context)!.forgot_password,
          ),
        ),
        body: Align(
          alignment: Alignment.bottomCenter,
          child: CustomBackgroundContiner(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                verticalSpace(35),
                CustomAuthTitleWidget(
                  title: AppLocalizations.of(context)!.forgot_password,
                ),
                verticalSpace(10),
                CustomAuthSubtitleWidget(
                  subtitle: AppLocalizations.of(context)!.otp_description,
                ),
                verticalSpace(40),
                CustomAppFormField(
                  textFormFieldTitle:
                      AppLocalizations.of(context)!.email_address,
                  hintText:
                      AppLocalizations.of(context)!.enter_your_email_address,
                  prefixIcon: Icons.person_2_outlined,
                ),
                verticalSpace(10),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.1,
                  child: CustomAppButton(
                    onPressed: () {
                      Navigator.pushNamed(context, AppRoutes.otpScreen);
                    },
                    buttonText: AppLocalizations.of(context)!.continue_buttom,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
