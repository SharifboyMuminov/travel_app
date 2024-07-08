import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/utils/app_colors.dart';
import 'package:travel_app/utils/app_size.dart';

class GlobalArrowBackButton extends StatelessWidget {
  const GlobalArrowBackButton({
    super.key,
    required this.onTab,
  });

  final VoidCallback onTab;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: IconButton.styleFrom(
        backgroundColor: AppColors.cF7F7F9,
        padding: EdgeInsets.all(10.we),
      ),
      onPressed: onTab,
      icon: SvgPicture.asset(
        "assets/icons/arrow_back.svg",
        width: 24.we,
        height: 24.we,
      ),
    );
  }
}
