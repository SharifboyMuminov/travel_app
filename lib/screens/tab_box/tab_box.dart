import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app/screens/tab_box/home/home_screen.dart';
import 'package:travel_app/screens/tab_box/messages/messages_screen.dart';
import 'package:travel_app/screens/tab_box/profile/profile_screen.dart';
import 'package:travel_app/screens/tab_box/schedule/schedule_screen.dart';
import 'package:travel_app/screens/tab_box/widget/tab_box_item.dart';
import 'package:travel_app/utils/app_colors.dart';
import 'package:travel_app/utils/app_size.dart';

class TabBox extends StatefulWidget {
  const TabBox({super.key});

  @override
  State<TabBox> createState() => _TabBoxState();
}

class _TabBoxState extends State<TabBox> {
  final List<Widget> _screens = const [
    HomeScreen(),
    ScheduleScreen(),
    MessagesScreen(),
    ProfileScreen(),
  ];

  int _activeScreen = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _activeScreen,
        children: _screens,
      ),
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
                onTab: () {
                  _onItemTapped(0);
                },
                title: 'Home',
                iconPath: "assets/icons/home.svg",
                isActive: _activeScreen == 0,
              ),
              TabBoxItem(
                onTab: () {
                  _onItemTapped(1);
                },
                title: 'calendar',
                iconPath: "assets/icons/calendar.svg",
                isActive: _activeScreen == 1,
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
                      child: SvgPicture.asset(
                        "assets/icons/search.svg",
                        width: 24.we,
                        height: 24.we,
                      ),
                    ),
                  ),
                ),
              ),
              TabBoxItem(
                onTab: () {
                  _onItemTapped(3);
                },
                title: 'Messages',
                iconPath: "assets/icons/messages.svg",
                isActive: _activeScreen == 3,
              ),
              TabBoxItem(
                onTab: () {
                  _onItemTapped(4);
                },
                title: 'Profile',
                iconPath: "assets/icons/profile.svg",
                isActive: _activeScreen == 4,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _activeScreen = index;
    });
  }
}
