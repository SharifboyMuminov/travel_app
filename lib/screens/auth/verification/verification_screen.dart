import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/screens/widget/global_arrow_back.dart';
import 'package:travel_app/utils/app_colors.dart';
import 'package:travel_app/utils/app_size.dart';
import 'package:travel_app/utils/app_text_style.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.we),
        child: Column(
          children: [
            48.getH(),
            Align(
              alignment: Alignment.topLeft,
              child: GlobalArrowBackButton(
                onTab: () {
                  Navigator.pop(context);
                },
              ),
            ),
            40.getH(),
            Text(
              "OTP Verification",
              style: AppTextStyle.interSemiBold.copyWith(
                fontSize: 26.sp,
                color: AppColors.c1B1E28,
              ),
            ),
            12.getH(),
            Text(
              "Please check your email www.uihut@gmail.com to see the verification code",
              textAlign: TextAlign.center,
              style: AppTextStyle.interRegular.copyWith(
                fontSize: 16.sp,
                color: AppColors.c7D848D,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
