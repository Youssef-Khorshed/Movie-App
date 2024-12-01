import 'package:flutter/material.dart';
import 'package:movie_app/features/settings/widgets/profile_setting_body.dart';

class ProfileSettingView extends StatelessWidget {
  const ProfileSettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ProfileSettingBody(),
    );
  }
}
