import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/utils/app_colors.dart';
import 'package:travel_app/utils/app_size.dart';
import 'package:travel_app/utils/app_text_style.dart';

class MainButton extends StatelessWidget {
  const MainButton({super.key, required this.title, required this.onTab});

  final String title;
  final VoidCallback onTab;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 18.he),
          backgroundColor: AppColors.c0D6EFD,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.r),
          ),
        ),
        onPressed: onTab,
        child: Text(
          title,
          style: AppTextStyle.interSemiBold.copyWith(
            fontSize: 16.sp,
            color: AppColors.white,
          ),
        ),
      ),
    );
  }
}
