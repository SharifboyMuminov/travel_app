import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/screens/auth/verification/widget/verification_input.dart';
import 'package:travel_app/screens/tab_box/tab_box.dart';
import 'package:travel_app/screens/widget/global_arrow_back.dart';
import 'package:travel_app/screens/widget/main_button.dart';
import 'package:travel_app/utils/app_colors.dart';
import 'package:travel_app/utils/app_size.dart';
import 'package:travel_app/utils/app_text_style.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  final TextEditingController textEditingController = TextEditingController();
  final FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
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
            40.getH(),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "OTP Code",
                style: AppTextStyle.interSemiBold.copyWith(
                  fontSize: 20.sp,
                  color: AppColors.c1B1E28,
                ),
              ),
            ),
            16.getH(),
            VerificationInput(
              pinController: textEditingController,
              focusNode: focusNode,
            ),
            40.getH(),
            MainButton(
              title: "Verify",
              onTab: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const TabBox();
                    },
                  ),
                );
              },
            ),
            16.getH(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Resend code to",
                  style: AppTextStyle.interRegular.copyWith(
                    fontSize: 14.sp,
                    color: AppColors.c7D848D,
                  ),
                ),
                Text(
                  "01:26",
                  style: AppTextStyle.interRegular.copyWith(
                    fontSize: 14.sp,
                    color: AppColors.c7D848D,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
