import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/screens/widget/global_arrow_back.dart';
import 'package:travel_app/utils/app_colors.dart';
import 'package:travel_app/utils/app_size.dart';
import 'package:travel_app/utils/app_text_style.dart';

class DetailsTopItems extends StatelessWidget {
  const DetailsTopItems({
    super.key,
    required this.arrowBackOnTab,
    required this.notesOnTab,
  });

  final VoidCallback arrowBackOnTab;
  final VoidCallback notesOnTab;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 67.he,
        left: 20.we,
        right: 20.we,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GlobalArrowBackButton(
            backgroundColor: AppColors.c1B1E28.withOpacity(0.2),
            iconColor: AppColors.white,
            onTab: arrowBackOnTab,
          ),
          Text(
            "Details",
            style: AppTextStyle.interSemiBold.copyWith(
              fontSize: 18.sp,
              color: AppColors.white,
            ),
          ),
          GlobalArrowBackButton(
            backgroundColor: AppColors.c1B1E28.withOpacity(0.2),
            iconColor: AppColors.white,
            iconPath: "notes.svg",
            onTab: notesOnTab,
          ),
        ],
      ),
    );
  }
}
