import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/utils/app_colors.dart';
import 'package:travel_app/utils/app_size.dart';
import 'package:travel_app/utils/app_text_style.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key, required this.onTab});

  final VoidCallback onTab;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.he, horizontal: 6.we),
      child: GestureDetector(
        onTap: onTab,
        child: SizedBox(
          width: 268.we,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(24.r),
              boxShadow: [
                BoxShadow(
                  color: AppColors.cB4BCC9.withOpacity(0.12),
                  blurRadius: 16,
                  spreadRadius: 0,
                  offset: const Offset(0, 6),
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 14.we,
                vertical: 14.he,
              ),
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/img.png",
                    width: 240.we,
                    height: 286.he,
                    fit: BoxFit.cover,
                  ),
                  14.getH(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          "Niladri Reservoir",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: AppTextStyle.interMedium.copyWith(
                            fontSize: 18.sp,
                            color: AppColors.c1B1E28,
                          ),
                        ),
                      ),
                      SvgPicture.asset(
                        "assets/icons/star.svg",
                      ),
                      4.getH(),
                      Text(
                        "4.7",
                        style: AppTextStyle.interRegular.copyWith(
                          fontSize: 15.sp,
                          color: AppColors.c1B1E28,
                        ),
                      ),
                    ],
                  ),
                  8.getH(),
                  Row(
                    children: [
                      SvgPicture.asset(
                        "assets/icons/location.svg",
                        width: 16.we,
                        height: 16.we,
                      ),
                      4.getW(),
                      Expanded(
                        child: Text(
                          "Tekergat, Sunamgnj",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: AppTextStyle.interRegular.copyWith(
                            fontSize: 15.sp,
                            color: AppColors.c7D848D,
                          ),
                        ),
                      ),
                      8.getW(),
                      Expanded(
                        child: Image.asset(
                          "assets/images/img_1.png",
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
