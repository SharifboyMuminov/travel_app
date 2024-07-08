import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';
import 'package:travel_app/utils/app_colors.dart';
import 'package:travel_app/utils/app_size.dart';
import 'package:travel_app/utils/app_text_style.dart';

class VerificationInput extends StatelessWidget {
  const VerificationInput({
    super.key,
    required this.pinController,
    required this.focusNode,
  });

  final TextEditingController pinController;
  final FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      margin: EdgeInsets.symmetric(horizontal: 4.we),
      width: width,
      height: 56.he,
      textStyle: AppTextStyle.interMedium.copyWith(
        fontSize: 18.sp,
        color: AppColors.c1B1E28,
      ),
      decoration: BoxDecoration(
        color: AppColors.cF7F7F9,
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.cF7F7F9.withOpacity(0.5),
            blurRadius: 30,
            offset: const Offset(0, 5),
          ),
        ],
      ),
    );

    return Pinput(
      length: 4,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
      ],
      defaultPinTheme: defaultPinTheme,
      controller: pinController,
      focusNode: focusNode,
      cursor: Container(
        height: 20.he,
        width: 2.we,
        decoration: BoxDecoration(
          color: AppColors.c0D6EFD,
          borderRadius: BorderRadius.circular(12.r),
        ),
      ),
      focusedPinTheme: defaultPinTheme.copyWith(
        decoration: BoxDecoration(
          color: AppColors.cF7F7F9,
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(
            color: AppColors.c0D6EFD,
            width: 1.we,
          ),
        ),
      ),
      errorPinTheme: defaultPinTheme.copyWith(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.r),
          border: Border.all(
            color: Colors.redAccent.withOpacity(0.40),
            width: 1.we,
          ),
        ),
      ),
      onCompleted: (pin) {},
    );
  }
}
