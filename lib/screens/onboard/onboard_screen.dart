import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as me;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/data/local/local_varbals.dart';
import 'package:travel_app/screens/auth/sign_in/sign_in_screen.dart';
import 'package:travel_app/screens/onboard/widget/top_item.dart';
import 'package:travel_app/screens/widget/main_button.dart';
import 'package:travel_app/utils/app_colors.dart';
import 'package:travel_app/utils/app_size.dart';
import 'package:travel_app/utils/app_text_style.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  int activeIndex = 0;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TopItem(pageController: _pageController),
          40.getH(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.we),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: AppTextStyle.interSemiBold.copyWith(
                  fontSize: 30.sp,
                ),
                children: [
                  TextSpan(
                    text: onboardingItems[activeIndex].title,
                    style: AppTextStyle.interSemiBold.copyWith(
                      fontSize: 30.sp,
                    ),
                  ),
                  TextSpan(
                    text: onboardingItems[activeIndex].mainTitle,
                    style: AppTextStyle.interBold.copyWith(
                      color: AppColors.cFF7029,
                      fontSize: 30.sp,
                    ),
                  ),
                ],
              ),
            ),
          ),
          1.getH(), // Adjust the space between text and line
          CustomPaint(
            painter: CurvePainter(),
            child: Container(
              height: 10.he,
            ), // Adjust the height to match the curve thickness
          ),
          9.getH(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 36.we),
            child: Text(
              onboardingItems[activeIndex].subTitle,
              textAlign: TextAlign.center,
              style: AppTextStyle.interRegular.copyWith(
                fontSize: 16.sp,
                color: AppColors.c7D848D,
              ),
            ),
          ),
          const Spacer(),

          Row(
            mainAxisSize: MainAxisSize.min,
            children: List.generate(
              onboardingItems.length,
              (index) {
                return AnimatedContainer(
                  margin: EdgeInsets.symmetric(horizontal: 2.we),
                  duration: const Duration(milliseconds: 300),
                  width: getWidth(index),
                  height: 7.he,
                  decoration: BoxDecoration(
                    color: activeIndex == index
                        ? AppColors.c0D6EFD
                        : AppColors.cCAEAFF,
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                );
              },
            ),
          ),
          30.getH(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.we),
            child: MainButton(
              title: "Next",
              onTab: () {
                if (activeIndex != onboardingItems.length - 1) {
                  _pageController.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.linear,
                  );
                  activeIndex++;
                  setState(() {});
                } else {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const SignInScreen();
                      },
                    ),
                  );
                }
              },
            ),
          ),
          22.getH(),
        ],
      ),
    );
  }

  double getWidth(int index) {
    if (index == activeIndex) {
      return 35.we;
    }

    if ((index + 1) == activeIndex || (index - 1) == activeIndex) {
      return 6.we;
    }

    return 13.we;
  }
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, me.Size size) {
    final paint = Paint()
      ..color = AppColors.cFF7029
      ..strokeWidth = 4
      ..style = PaintingStyle.fill;

    final path = Path();
    path.moveTo(size.width / 2 - 20, size.height);
    path.quadraticBezierTo(
      size.width / 2,
      -size.height / 2,
      size.width,
      size.height,
    );

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
