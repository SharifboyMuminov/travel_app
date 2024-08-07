import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/screens/tab_box/schedule/widget/calendar.dart';
import 'package:travel_app/utils/app_colors.dart';
import 'package:travel_app/utils/app_size.dart';
import 'package:travel_app/utils/app_text_style.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          56.getH(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.we),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Schedule",
                  style: AppTextStyle.interSemiBold.copyWith(
                    fontSize: 18.sp,
                    color: AppColors.c1B1E28,
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
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(
                horizontal: 20.we,
                vertical: 30.he,
              ),
              child: Column(
                children: [
                  MyDatePicker(
                    onChangedDateTime: (DateTime value) {},
                  ),
                  30.getH(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "My Schedule",
                        style: AppTextStyle.interSemiBold.copyWith(
                          fontSize: 20.sp,
                          color: AppColors.c1B1E28,
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3.r),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "View all",
                          style: AppTextStyle.interRegular.copyWith(
                            fontSize: 14.sp,
                            color: AppColors.c0D6EFD,
                          ),
                        ),
                      ),
                    ],
                  ),
                  16.getH(),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.cB4BCC9.withOpacity(0.12),
                          blurRadius: 16,
                          spreadRadius: 0,
                          offset: const Offset(0, 6),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/img_4.png",
                          width: 80.we,
                          height: 80.we,
                          fit: BoxFit.cover,
                        ),
                        16.getW(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "26 January 2022",
                              style: AppTextStyle.interRegular.copyWith(
                                fontSize: 13.sp,
                                color: AppColors.c7D848D,
                              ),
                            ),
                            Text(
                              "Niladri Reservoir",
                              style: AppTextStyle.interMedium.copyWith(
                                fontSize: 16.sp,
                                color: AppColors.c1B1E28,
                              ),
                            ),
                            Text(
                              "Tekergat, Sunamgnj",
                              style: AppTextStyle.interRegular.copyWith(
                                fontSize: 13.sp,
                                color: AppColors.c7D848D,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
