import 'package:flutter/material.dart';

import '../../../core/utils/Routing/app_routes.dart';
import '../../../core/utils/Spacing/app_spacing.dart';
import '../../App/costume_widgets/costume_app_bar/costume_app_bar.dart';
import '../../App/costume_widgets/custom_app_button.dart';
import '../../App/costume_widgets/custom_text_form_field.dart';
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
            title: "Forgot Password",
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
                  title: "Forgot Password",
                ),
                verticalSpace(10),
                const CustomAuthSubtitleWidget(
                  subtitle:
                      "Please enter your email and we will send the OTP cade in your email address",
                ),
                verticalSpace(40),
                const CustomAppFormField(
                  textFormFieldTitle: "Email Adress",
                  hintText: "Enter your Email Adress",
                  prefixIcon: Icons.person_2_outlined,
                ),
                const Spacer(),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.1,
                  child: CustomAppButton(
                    onPressed: () {
                      Navigator.pushNamed(context, AppRoutes.otpScreen);
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
