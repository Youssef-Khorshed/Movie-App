import 'package:flutter/material.dart';

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
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: CustumeAppBar(
            isBack: true,
            title: "Create New Password",
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
                const CustomAuthTitleWidget(
                  title: "Create New Password",
                ),
                verticalSpace(10),
                const CustomAuthSubtitleWidget(
                  subtitle:
                      "You can enter a new password to create a new password",
                ),
                verticalSpace(25),
                const CustomAppFormField(
                  textFormFieldTitle: "Password",
                  hintText: "Enter your Password",
                  prefixIcon: Icons.password,
                  isPassword: true,
                  obscureText: true,
                ),
                verticalSpace(10),
                const CustomAppFormField(
                  textFormFieldTitle: "Confirm Password",
                  hintText: "Confirm Password",
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
                    buttonText: "Continue",
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
