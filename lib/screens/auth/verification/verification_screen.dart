import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/screens/auth/widget/auth_input.dart';
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
              "Forgot password",
              style: AppTextStyle.interSemiBold.copyWith(
                fontSize: 26.sp,
                color: AppColors.c1B1E28,
              ),
            ),
            12.getH(),
            Text(
              "Enter your email account to reset  your password",
              textAlign: TextAlign.center,
              style: AppTextStyle.interRegular.copyWith(
                fontSize: 16.sp,
                color: AppColors.c7D848D,
              ),
            ),
            40.getH(),
            AuthInput(
              onChanged: (String value) {},
              hintText: "Enter full name...",
            ),
            40.getH(),
            MainButton(
              title: "Reset Password",
              onTab: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      backgroundColor: AppColors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24.r),
                      ),
                      icon: SvgPicture.asset(
                        "assets/icons/dialog_item.svg",
                        width: 44.we,
                        height: 44.we,
                      ),
                      iconPadding: EdgeInsets.only(top: 30.he),
                      title: Text(
                        "Check your email",
                        style: AppTextStyle.interSemiBold.copyWith(
                          fontSize: 18.sp,
                        ),
                      ),
                      titlePadding: EdgeInsets.only(top: 20.he),
                      contentPadding: EdgeInsets.only(
                        left: 39.we,
                        right: 39.we,
                        top: 8.he,
                        bottom: 30.he,
                      ),
                      content: Text(
                        "We have send password recovery instruction to your email",
                        textAlign: TextAlign.center,
                        style: AppTextStyle.interRegular.copyWith(
                          fontSize: 16.sp,
                          color: AppColors.c7D848D,
                        ),
                      ),
                    );
                  },
                );
                // Navigator.pushReplacement(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) {
                //       return const TabBox();
                //     },
                //   ),
                // );
              },
            ),
          ],
        ),
      ),
    );
  }
}
