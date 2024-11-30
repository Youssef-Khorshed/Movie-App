import 'package:flutter/material.dart';

import '../../../core/utils/Routing/app_routes.dart';
import '../../../core/utils/Spacing/app_spacing.dart';
import '../../App/costume_widgets/costume_app_bar/costume_app_bar.dart';
import '../../App/costume_widgets/custom_app_button.dart';
import '../../App/costume_widgets/custom_text_form_field.dart';
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
            title: "SignUp",
          ),
        ),
        body: Align(
          alignment: Alignment.bottomCenter,
          child: CustomBackgroundContiner(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CustomAuthTitleWidget(
                  title: "Get Started Free",
                ),
                verticalSpace(10),
                const CustomAuthSubtitleWidget(
                  subtitle: "Free Forever. No Credit Card Needed",
                ),
                verticalSpace(25),
                const CustomAppFormField(
                  textFormFieldTitle: "Email Adress",
                  hintText: "Enter your Email Adress",
                  prefixIcon: Icons.person_2_outlined,
                ),
                const CustomAppFormField(
                  textFormFieldTitle: "Username",
                  hintText: "Enter your Username",
                  prefixIcon: Icons.person_2_outlined,
                ),
                verticalSpace(10),
                const CustomAppFormField(
                  textFormFieldTitle: "Password",
                  hintText: "Enter your Password",
                  prefixIcon: Icons.password,
                  isPassword: true,
                  obscureText: true,
                ),
                verticalSpace(25),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.1,
                  child: CustomAppButton(
                    onPressed: () {},
                    buttonText: "Sign Up",
                  ),
                ),
                CustomTextRowWidget(
                  firstTitle: " have an account ?",
                  secTitle: " Login",
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.loginScreen);
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
