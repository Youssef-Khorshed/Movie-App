import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/styles/app_text_style.dart';
import '../../../core/utils/colors/app_colors.dart';

class CustomAppFormField extends StatefulWidget {
  final String? hintText;
  final String textFormFieldTitle;
  final bool obscureText, isPassword;
  final IconData? prefixIcon;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final void Function()? onTap;

  const CustomAppFormField({
    super.key,
    required this.hintText,
    this.obscureText = false,
    this.isPassword = false,
    this.controller,
    this.validator,
    this.onTap,
    this.prefixIcon,
    required this.textFormFieldTitle,
  });

  @override
  State<CustomAppFormField> createState() => _CustomAppFormFieldState();
}

class _CustomAppFormFieldState extends State<CustomAppFormField> {
  bool isPasswordHidden = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AutoSizeText(
          widget.textFormFieldTitle,
          style: AppTextStyle.style14Gray8W500,
        ),
        Container(
          margin: const EdgeInsets.symmetric(
            vertical: 12,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            gradient: AppColors.formFieldGradientColors,
          ),
          child: TextFormField(
            controller: widget.controller,
            obscureText: widget.isPassword && isPasswordHidden,
            keyboardType: TextInputType.text,
            validator: widget.validator,
            onTap: widget.onTap,
            decoration: InputDecoration(
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.black, width: 0.100),
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.black, width: 0.100),
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.red, width: 0.100),
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              errorMaxLines: 1,
              hintText: widget.hintText,
              hintStyle: AppTextStyle.style14Gray8W500,
              suffixIcon: widget.isPassword
                  ? IconButton(
                      icon: Icon(
                        isPasswordHidden
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined,
                        color: AppColors.gray5,
                        size: 20,
                      ),
                      onPressed: () {
                        isPasswordHidden = !isPasswordHidden;
                        setState(() {});
                      },
                    )
                  : null,
              prefixIcon: Icon(
                widget.prefixIcon,
                color: AppColors.gray5,
                size: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
