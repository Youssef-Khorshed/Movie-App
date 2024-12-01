import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/Spacing/app_spacing.dart';
import 'package:movie_app/features/App/screens/costume_app_widgets/custom_app_button.dart';
import '../../../core/utils/Routing/app_routes.dart';
import '../../App/screens/costume_app_widgets/costume_app_bar.dart';
import '../../App/screens/costume_app_widgets/custom_text_form_field.dart';
import '../widgets/custom_auth_forget_password_textfield.dart';
import '../widgets/custom_auth_subtitle_widget.dart';
import '../widgets/custom_auth_title_widget.dart';
import '../widgets/custom_background_continer.dart';
import '../widgets/custom_text_row_widget.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: CustumeAppBar(
            isBack: true,
            title: "Login",
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
                verticalSpace(20),
                const CustomAuthTitleWidget(
                  title: "Welcome Back!",
                ),
                verticalSpace(10),
                const CustomAuthSubtitleWidget(
                  subtitle: "Welcome back we missed you",
                ),
                verticalSpace(25),
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
                const CustomAuthForgetPasswordTextfield(),
                verticalSpace(10),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.1,
                  child: CustomAppButton(
                    onPressed: () {},
                    buttonText: "Login",
                  ),
                ),
                CustomTextRowWidget(
                  firstTitle: "Don't have an account ?",
                  secTitle: " SignUp",
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
