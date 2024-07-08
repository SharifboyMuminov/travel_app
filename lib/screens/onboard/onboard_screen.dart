import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as me;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/utils/app_colors.dart';
import 'package:travel_app/utils/app_size.dart';
import 'package:travel_app/utils/app_text_style.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 444.he,
            child: PageView(
              children: List.generate(3, (index) {
                return Image.asset(
                  "assets/images/onboarding_${index + 1}.png",
                  fit: BoxFit.fill,
                );
              }),
            ),
          ),
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
                    text: "It’s a big world out there go ",
                    style: AppTextStyle.interSemiBold.copyWith(
                      fontSize: 30.sp,
                    ),
                  ),
                  TextSpan(
                    text: "explore",
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
            padding:  EdgeInsets.symmetric(horizontal: 36.we),
            child: Text(
              "At Friends tours and travel, we customize reliable and trutworthy educational tours to destinations all over the world",
              textAlign: TextAlign.center,
              style: AppTextStyle.interRegular.copyWith(
                fontSize: 16.sp,
                color: AppColors.c7D848D,
              ),
            ),
          ),
        ],
      ),
    );
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
