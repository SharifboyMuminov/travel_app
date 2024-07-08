import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/screens/tab_box/widget/tab_box_item.dart';
import 'package:travel_app/utils/app_colors.dart';
import 'package:travel_app/utils/app_size.dart';

class TabBox extends StatefulWidget {
  const TabBox({super.key});

  @override
  State<TabBox> createState() => _TabBoxState();
}

class _TabBoxState extends State<TabBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: DecoratedBox(
        decoration: BoxDecoration(
          color: AppColors.white,
          boxShadow: [
            BoxShadow(
              color: AppColors.cAFB8C6.withOpacity(0.12),
              blurRadius: 16,
              spreadRadius: 0,
              offset: const Offset(-6, 0),
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.only(bottom: 30.he, top: 4.he),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TabBoxItem(
                onTab: () {},
                title: 'Home',
                iconPath: "assets/icons/home.svg",
              ),
              TabBoxItem(
                onTab: () {},
                title: 'calendar',
                iconPath: "assets/icons/calendar.svg",
              ),
              SizedBox(
                width: 50.we,
                height: 50.we,
                child: FloatingActionButton(
                  elevation: 0,
                  backgroundColor: AppColors.c0D6EFD,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(90.r),
                  ),
                  onPressed: () {},
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.c0D6EFD,
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.c0D6EFD.withOpacity(0.17),
                          blurRadius: 19,
                          spreadRadius: 0,
                          offset: const Offset(0, 8),
                        ),
                      ],
                    ),
                    child: Expanded(
                      child: SvgPicture.asset("assets/icons/search.svg"),
                    ),
                  ),
                ),
              ),
              TabBoxItem(
                onTab: () {},
                title: 'Messages',
                iconPath: "assets/icons/messages.svg",
              ),
              TabBoxItem(
                onTab: () {},
                title: 'Profile',
                iconPath: "assets/icons/profile.svg",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
