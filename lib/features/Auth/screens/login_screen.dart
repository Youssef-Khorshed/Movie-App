import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/Spacing/app_spacing.dart';
import 'package:movie_app/features/App/costume_widgets/custom_app_button.dart';
import '../../../core/utils/Routing/app_routes.dart';
import '../../App/costume_widgets/costume_app_bar/costume_app_bar.dart';
import '../../App/costume_widgets/custom_text_form_field.dart';
import '../widgets/custom_auth_forget_password_textfield.dart';
import '../widgets/custom_auth_subtitle_widget.dart';
import '../widgets/custom_auth_title_widget.dart';
import '../widgets/custom_background_continer.dart';
import '../widgets/custom_text_row_widget.dart';
import "package:flutter_gen/gen_l10n/app_localizations.dart";


class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:  PreferredSize(
          preferredSize:const Size.fromHeight(60),
          child: CustumeAppBar(
            isBack: true,
            title: AppLocalizations.of(context)!.log_in,
          ),
        ),
        body: Align(
          alignment: Alignment.bottomCenter,
          child: CustomBackgroundContiner(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                verticalSpace(35),
                 CustomAuthTitleWidget(
                  title: AppLocalizations.of(context)!.welcome_back,
                ),
                verticalSpace(10),
                 CustomAuthSubtitleWidget(
                  subtitle:AppLocalizations.of(context)!.welcome_back_message,
                ),
                verticalSpace(25),
                 CustomAppFormField(
                  textFormFieldTitle: AppLocalizations.of(context)!.username,
                  hintText:AppLocalizations.of(context)!.enter_your_username,
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
                const CustomAuthForgetPasswordTextfield(),
                const Spacer(),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.1,
                  child: CustomAppButton(
                    onPressed: () {},
                    buttonText:AppLocalizations.of(context)!.log_in,
                  ),
                ),
                CustomTextRowWidget(
                  firstTitle: AppLocalizations.of(context)!.dont_have_an_account,
                  secTitle: AppLocalizations.of(context)!.sign_up,
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.signUpScreen);
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
