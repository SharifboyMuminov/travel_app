import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/utils/app_colors.dart';
import 'package:travel_app/utils/app_text_style.dart';

class AuthInput extends StatelessWidget {
  const AuthInput({
    super.key,
    required this.onChanged,
    required this.hintText,
    this.onTabEye,
    this.obscureText = false,
  });

  final ValueChanged<String> onChanged;
  final String hintText;
  final bool obscureText;
  final VoidCallback? onTabEye;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      onChanged: onChanged,
      cursorColor: AppColors.c1B1E28,
      style: AppTextStyle.interRegular.copyWith(
        fontSize: 16.sp,
        color: AppColors.c1B1E28,
      ),
      decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.cF7F7F9,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14.r),
            borderSide: const BorderSide(
              width: 0,
              color: Colors.transparent,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14.r),
            borderSide: const BorderSide(
              width: 0,
              color: Colors.transparent,
            ),
          ),
          hintText: hintText,
          hintStyle: AppTextStyle.interRegular.copyWith(
            fontSize: 16.sp,
            color: AppColors.c7D848D,
          ),
          suffixIcon: onTabEye != null
              ? IconButton(
                  onPressed: onTabEye,
                  icon: SvgPicture.asset(
                    "assets/icons/close_eye.svg",
                  ),
                )
              : null),
    );
  }
}
