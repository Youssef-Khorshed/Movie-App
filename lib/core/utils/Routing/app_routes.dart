import 'package:flutter/cupertino.dart';
import 'package:movie_app/features/setting_view/views/change_password_view.dart';
import 'package:movie_app/features/setting_view/views/edit_profile_view.dart';
import 'package:movie_app/features/setting_view/views/profile_setting_view.dart';

import '../../../features/Auth/screens/create_new_password_screen.dart';
import '../../../features/Auth/screens/forget_password_screen.dart';
import '../../../features/Auth/screens/login_screen.dart';
import '../../../features/Auth/screens/otp_screen.dart';
import '../../../features/Auth/screens/personalize_move_screen.dart';
import '../../../features/Auth/screens/signup_screen.dart';
import '../../../features/Auth/screens/welcome_screen.dart';

class AppRoutes {
  static const String welcomeScreen = '/welcomeScreen';
  static const String loginScreen = '/loginScreen';
  static const String signUpScreen = '/signUpScreen';
  static const String forgetPasswordScreen = '/forgetPasswordScreen';
  static const String otpScreen = '/otpScreen';
  static const String createNewPasswordScreen = '/createNewPasswordScreen';
  static const String personalizeMoveScreen = '/personalizeMoveScreen';
  static const String profileSettingScreen = '/profileSetting';
  static const String profileEditingScreen = '/profileEditing';
  static const String changePasswordScreen = '/cahngePassword';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case welcomeScreen:
        return CupertinoPageRoute(
          builder: (context) {
            return const WelcomeScreen();
          },
        );
      case loginScreen:
        return CupertinoPageRoute(
          builder: (context) {
            return const LogInScreen();
          },
        );
      case signUpScreen:
        return CupertinoPageRoute(
          builder: (context) {
            return const SignupScreen();
          },
        );
      case forgetPasswordScreen:
        return CupertinoPageRoute(
          builder: (context) {
            return const ForgetPasswordScreen();
          },
        );
      case otpScreen:
        return CupertinoPageRoute(
          builder: (context) {
            return const OtpScreen();
          },
        );
      case createNewPasswordScreen:
        return CupertinoPageRoute(
          builder: (context) {
            return const CreateNewPasswordScreen();
          },
        );
      case personalizeMoveScreen:
        return CupertinoPageRoute(
          builder: (context) {
            return const PersonalizeMoveScreen();
          },
        );
      case profileSettingScreen:
        return CupertinoPageRoute(
          builder: (context) {
            return const ProfileSettingView();
          },
        );
      case profileEditingScreen:
        return CupertinoPageRoute(
          builder: (context) {
            return const EditProfileView();
          },
        );
      case changePasswordScreen:
        return CupertinoPageRoute(
          builder: (context) {
            return const ChangePasswordView();
          },
        );
      default:
        return CupertinoPageRoute(builder: (_) => const WelcomeScreen());
    }
  }
}
