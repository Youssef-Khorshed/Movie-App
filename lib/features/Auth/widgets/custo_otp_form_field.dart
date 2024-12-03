import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../core/utils/colors/app_colors.dart';

class CustoOtpFormField extends StatelessWidget {
  const CustoOtpFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
                  appContext: context,
                  length: 5,
                  onChanged: (value) {},
                  keyboardType: TextInputType.number,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(5),
                    fieldHeight: 50,
                    fieldWidth: 53,
                    activeFillColor: AppColors.transparent,
                    selectedFillColor: AppColors.gray11,
                    inactiveFillColor: AppColors.white,
                    activeColor: AppColors.gray12,
                    selectedColor: AppColors.gray12,
                    inactiveColor: AppColors.gray12,
                  ),
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                );
  }
}