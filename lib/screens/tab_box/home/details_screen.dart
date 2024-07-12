import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/screens/tab_box/home/widget/background_image.dart';
import 'package:travel_app/screens/tab_box/home/widget/details_top_items.dart';
import 'package:travel_app/screens/widget/global_arrow_back.dart';
import 'package:travel_app/utils/app_colors.dart';
import 'package:travel_app/utils/app_size.dart';
import 'package:travel_app/utils/app_text_style.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundImage(imagePath: "assets/images/img_2.png"),
          DetailsTopItems(
            notesOnTab: () {},
            arrowBackOnTab: () {
              Navigator.pop(context);
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30.r),
                  topLeft: Radius.circular(30.r),
                ),
              ),
              child: SizedBox(
                width: width,
                height: height / 1.8,
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(horizontal: 20.we),
                  child: Column(
                    children: [
                      16.getH(),
                      DecoratedBox(
                        decoration: BoxDecoration(
                          color: AppColors.c7D848D.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(16.r),
                        ),
                        child: SizedBox(
                          width: 36.we,
                          height: 5.he,
                        ),
                      ),
                      24.getH(),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Niladri Reservoir",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: AppTextStyle.interMedium.copyWith(
                                    fontSize: 24.sp,
                                    color: AppColors.c1B1E28,
                                  ),
                                ),
                                4.getH(),
                                Text(
                                  "Tekergat, Sunamgnj",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: AppTextStyle.interRegular.copyWith(
                                    fontSize: 15.sp,
                                    color: AppColors.c7D848D,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Image.asset(
                            "assets/images/img_3.png",
                            width: 50.we,
                            height: 50.we,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                      24.getH(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SvgPicture.asset(
                                "assets/icons/location.svg",
                                width: 16.we,
                                height: 16.we,
                              ),
                              4.getW(),
                              Text(
                                "Tekergat",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: AppTextStyle.interRegular.copyWith(
                                  fontSize: 15.sp,
                                  color: AppColors.c7D848D,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SvgPicture.asset(
                                "assets/icons/star.svg",
                              ),
                              4.getW(),
                              Text(
                                "4.7",
                                style: AppTextStyle.interRegular.copyWith(
                                  fontSize: 15.sp,
                                  color: AppColors.c1B1E28,
                                ),
                              ),
                              2.getW(),
                              Text(
                                "(2498)",
                                style: AppTextStyle.interRegular.copyWith(
                                  fontSize: 15.sp,
                                  color: AppColors.c7D848D,
                                ),
                              ),
                            ],
                          ),
                          RichText(
                            text: TextSpan(
                              text: "\$59/",
                              style: AppTextStyle.interRegular.copyWith(
                                color: AppColors.c0D6EFD,
                                fontSize: 14.sp,
                              ),
                              children: [
                                TextSpan(
                                  text: "Person",
                                  style: AppTextStyle.interRegular.copyWith(
                                    color: AppColors.c7D848D,
                                    fontSize: 14.sp,
                                  ),
                                ),
                              ],
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
        ],
      ),
    );
  }
}
