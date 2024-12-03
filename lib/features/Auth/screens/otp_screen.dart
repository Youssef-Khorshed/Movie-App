import 'package:flutter/material.dart';
import "package:flutter_gen/gen_l10n/app_localizations.dart";
import '../../../core/utils/Routing/app_routes.dart';
import '../../../core/utils/Spacing/app_spacing.dart';
import '../../App/screens/costume_app_widgets/costume_app_bar.dart';
import '../../App/screens/costume_app_widgets/custom_app_button.dart';
import '../widgets/custo_otp_form_field.dart';
import '../widgets/custom_auth_subtitle_widget.dart';
import '../widgets/custom_auth_title_widget.dart';
import '../widgets/custom_background_continer.dart';
import '../widgets/custom_text_row_widget.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: CustumeAppBar(
            isBack: true,
            title: "OTP",
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
                  title: AppLocalizations.of(context)!.otp_code_verification,
                ),
                verticalSpace(10),
                CustomAuthSubtitleWidget(
                  subtitle: AppLocalizations.of(context)!.otp_sent_message,
                ),
                verticalSpace(25),
                const CustoOtpFormField(),
                verticalSpace(20),
                CustomTextRowWidget(
                  firstTitle: AppLocalizations.of(context)!.dont_receive_code,
                  secTitle: " OTP ?",
                  onTap: () {},
                ),
                verticalSpace(10),
                CustomTextRowWidget(
                  firstTitle: AppLocalizations.of(context)!.resend_code,
                  secTitle: " 30 sec",
                  onTap: () {},
                ),
                verticalSpace(10),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.1,
                  child: CustomAppButton(
                    onPressed: () {
                      Navigator.pushNamed(
                          context, AppRoutes.createNewPasswordScreen);
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
