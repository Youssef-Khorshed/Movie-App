import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import '../../../core/utils/Routing/app_routes.dart';
import '../../../core/utils/styles/app_text_style.dart';
import "package:flutter_gen/gen_l10n/app_localizations.dart";

class CustomAuthForgetPasswordTextfield extends StatelessWidget {
  const CustomAuthForgetPasswordTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.forgetPasswordScreen);
      },
      child: Align(
        alignment: Alignment.topRight,
        child: AutoSizeText(
          AppLocalizations.of(context)!.forgot_password,
          style: AppTextStyle.style12Gray6W500,
          textAlign: TextAlign.end,
        ),
      ),
    );
  }
}
