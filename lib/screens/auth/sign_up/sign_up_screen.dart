import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/screens/auth/widget/auth_input.dart';
import 'package:travel_app/screens/tab_box/tab_box.dart';
import 'package:travel_app/screens/widget/global_arrow_back.dart';
import 'package:travel_app/screens/widget/main_button.dart';
import 'package:travel_app/utils/app_colors.dart';
import 'package:travel_app/utils/app_size.dart';
import 'package:travel_app/utils/app_text_style.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool obscureTextForPassword = false;

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
              "Sign up now",
              style: AppTextStyle.interSemiBold.copyWith(
                fontSize: 26.sp,
                color: AppColors.c1B1E28,
              ),
            ),
            12.getH(),
            Text(
              "Please fill the details and create account",
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
            24.getH(),
            AuthInput(
              onChanged: (String value) {},
              hintText: "Enter email...",
            ),
            24.getH(),
            AuthInput(
              obscureText: obscureTextForPassword,
              onTabEye: () {
                setState(() {
                  obscureTextForPassword = !obscureTextForPassword;
                });
              },
              onChanged: (String value) {},
              hintText: "Enter password...",
            ),
            16.getH(),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Password must be 8 character",
                style: AppTextStyle.interRegular.copyWith(
                  fontSize: 14.sp,
                  color: AppColors.c7D848D,
                ),
              ),
            ),
            40.getH(),
            MainButton(
              title: "Sign Up",
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
            40.getH(),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Already have an account",
                  style: AppTextStyle.interRegular.copyWith(
                    fontSize: 14.sp,
                    color: AppColors.c707B81,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Sign in",
                    style: AppTextStyle.interMedium.copyWith(
                      fontSize: 14.sp,
                      color: AppColors.c0D6EFD,
                    ),
                  ),
                ),
              ],
            ),
            12.getH(),
            Text(
              "Or connect",
              style: AppTextStyle.interRegular.copyWith(
                fontSize: 14.sp,
                color: AppColors.c707B81,
              ),
            ),
            36.getH(),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  "assets/icons/facebook.svg",
                  width: 44.we,
                  height: 44.we,
                ),
                20.getW(),
                SvgPicture.asset(
                  "assets/icons/instagram.svg",
                  width: 44.we,
                  height: 44.we,
                ),
                20.getW(),
                SvgPicture.asset(
                  "assets/icons/twitter.svg",
                  width: 44.we,
                  height: 44.we,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
