import 'package:flutter/material.dart';
import "package:flutter_gen/gen_l10n/app_localizations.dart";
import '../../../core/utils/Routing/app_routes.dart';
import '../../../core/utils/Spacing/app_spacing.dart';
import '../../App/costume_widgets/costume_app_bar/costume_app_bar.dart';
import '../../App/costume_widgets/custom_app_button.dart';
import '../../App/costume_widgets/custom_text_form_field.dart';
import '../widgets/custom_auth_subtitle_widget.dart';
import '../widgets/custom_auth_title_widget.dart';
import '../widgets/custom_background_continer.dart';

class CreateNewPasswordScreen extends StatelessWidget {
  const CreateNewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: CustumeAppBar(
            isBack: true,
            title: AppLocalizations.of(context)!.create_new_password,
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
                  title: AppLocalizations.of(context)!.create_new_password,
                ),
                verticalSpace(10),
                CustomAuthSubtitleWidget(
                  subtitle:
                      AppLocalizations.of(context)!.new_password_description,
                ),
                verticalSpace(25),
                CustomAppFormField(
                  textFormFieldTitle: AppLocalizations.of(context)!.password,
                  hintText: AppLocalizations.of(context)!.enter_your_password,
                  prefixIcon: Icons.password,
                  isPassword: true,
                  obscureText: true,
                ),
                verticalSpace(10),
                CustomAppFormField(
                  textFormFieldTitle:
                      AppLocalizations.of(context)!.confirm_password,
                  hintText: AppLocalizations.of(context)!.enter_your_password,
                  prefixIcon: Icons.password,
                  isPassword: true,
                  obscureText: true,
                ),
                const Spacer(),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.1,
                  child: CustomAppButton(
                    onPressed: () {
                      Navigator.pushNamed(
                          context, AppRoutes.personalizeMoveScreen);
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
