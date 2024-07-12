import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/utils/app_colors.dart';
import 'package:travel_app/utils/app_size.dart';

class GlobalArrowBackButton extends StatelessWidget {
  const GlobalArrowBackButton({
    super.key,
    required this.onTab,
    this.iconPath = "arrow_back.svg",
    this.backgroundColor,
    this.iconColor,
  });

  final VoidCallback onTab;
  final String iconPath;
  final Color? backgroundColor;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: IconButton.styleFrom(
        backgroundColor: backgroundColor ?? AppColors.cF7F7F9,
        padding: EdgeInsets.all(10.we),
      ),
      onPressed: onTab,
      icon: SvgPicture.asset(
        "assets/icons/$iconPath",
        width: 24.we,
        height: 24.we,
        colorFilter: ColorFilter.mode(
          iconColor ?? AppColors.c1B1E28,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
