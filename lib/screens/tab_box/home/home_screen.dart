import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/screens/tab_box/home/details_screen.dart';
import 'package:travel_app/screens/tab_box/home/widget/product_item.dart';
import 'package:travel_app/utils/app_colors.dart';
import 'package:travel_app/utils/app_size.dart';
import 'package:travel_app/utils/app_text_style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          56.getH(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.we),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DecoratedBox(
                  decoration: BoxDecoration(
                    color: AppColors.cF7F7F9,
                    borderRadius: BorderRadius.circular(22.r),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 4.we,
                      right: 12.we,
                      top: 4.he,
                      bottom: 4.he,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        DecoratedBox(
                          decoration: const BoxDecoration(
                            color: AppColors.cFFEADF,
                            shape: BoxShape.circle,
                          ),
                          child: SvgPicture.asset(
                            "assets/icons/person.svg",
                            width: 37.we,
                            height: 37.we,
                          ),
                        ),
                        6.getW(),
                        Text(
                          "Leonardo",
                          style: AppTextStyle.interMedium.copyWith(
                            fontSize: 14.sp,
                            color: AppColors.c1B1E28,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                IconButton(
                  style: IconButton.styleFrom(
                    backgroundColor: AppColors.cF7F7F9,
                    padding: EdgeInsets.all(10.we),
                  ),
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications,
                    size: 22.sp,
                    color: AppColors.black,
                  ),
                ),
              ],
            ),
          ),
          24.getH(),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.only(bottom: 30.he),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.we),
                    child: Text(
                      "Explore the",
                      style: AppTextStyle.interLight.copyWith(
                        fontSize: 38.sp,
                        color: AppColors.c1B1E28,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.we),
                    child: Text(
                      "Beautiful world!",
                      style: AppTextStyle.interBold.copyWith(
                        fontSize: 38.sp,
                        color: AppColors.c1B1E28,
                      ),
                    ),
                  ),
                  32.getH(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.we),
                    child: Text(
                      "Best Destination",
                      style: AppTextStyle.interSemiBold.copyWith(
                        fontSize: 20.sp,
                        color: AppColors.c1B1E28,
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    padding: EdgeInsets.symmetric(horizontal: 6.we),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                        10,
                        (index) {
                          return ProductItem(onTab: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return const DetailsScreen();
                                },
                              ),
                            );
                          });
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
