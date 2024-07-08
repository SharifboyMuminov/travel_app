import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/utils/app_colors.dart';
import 'package:travel_app/utils/app_size.dart';
import 'package:travel_app/utils/app_text_style.dart';

class TabBoxItem extends StatelessWidget {
  const TabBoxItem({
    super.key,
    required this.onTab,
    required this.title,
    required this.iconPath,
    required this.isActive,
  });

  final VoidCallback onTab;
  final String title;
  final String iconPath;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
      ),
      onPressed: onTab,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            iconPath,
            width: 24.we,
            height: 24.we,
            colorFilter: ColorFilter.mode(
                isActive ? AppColors.c0D6EFD : AppColors.c7D848D,
                BlendMode.srcIn),
          ),
          4.getH(),
          Text(
            title,
            style: AppTextStyle.interRegular.copyWith(
              fontSize: 12.sp,
              color: isActive ? AppColors.c0D6EFD : AppColors.c7D848D,
            ),
          ),
        ],
      ),
    );
  }
}
