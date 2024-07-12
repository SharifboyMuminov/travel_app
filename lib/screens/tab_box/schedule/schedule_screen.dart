import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      body: Center(child: DatePicker()),
    );
  }
}

class DatePicker extends StatefulWidget {
  const DatePicker({super.key});

  @override
  DatePickerState createState() => DatePickerState();
}

class DatePickerState extends State<DatePicker> {
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: AppColors.cB4BCC9.withOpacity(0.16),
            blurRadius: 20,
            spreadRadius: 0,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(16.we),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Text(
                  "${selectedDate.day} ${_monthName(selectedDate.month)}",
                  style: AppTextStyle.interSemiBold.copyWith(
                    fontSize: 20.sp,
                    color: AppColors.c1B1E28,
                  ),
                ),
                const Spacer(),
                IconButton(
                  icon: Icon(
                    Icons.chevron_left,
                    size: 22.sp,
                    color: AppColors.c1B1E28,
                  ),
                  onPressed: () {
                    setState(() {
                      selectedDate = selectedDate.subtract(Duration(days: 7));
                    });
                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.chevron_right,
                    size: 22.sp,
                    color: AppColors.c1B1E28,
                  ),
                  onPressed: () {
                    setState(() {
                      selectedDate = selectedDate.add(Duration(days: 7));
                    });
                  },
                ),
              ],
            ),
            12.getH(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(7, (index) {
                DateTime date = DateTime.now().subtract(
                    Duration(days: DateTime.now().weekday - index - 1));
                bool isSelected = date.day == selectedDate.day;

                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedDate = date;
                    });
                  },
                  child: Column(
                    children: [
                      Text(
                        _dayName(date.weekday),
                        style: TextStyle(
                          color: isSelected ? Colors.blue : Colors.grey,
                        ),
                      ),
                      4.getH(),
                      DecoratedBox(
                        decoration: BoxDecoration(
                          color: isSelected ? Colors.blue : Colors.transparent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            date.day.toString(),
                            style: TextStyle(
                              color: isSelected ? Colors.white : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  String _monthName(int month) {
    switch (month) {
      case 1:
        return 'January';
      case 2:
        return 'February';
      case 3:
        return 'March';
      case 4:
        return 'April';
      case 5:
        return 'May';
      case 6:
        return 'June';
      case 7:
        return 'July';
      case 8:
        return 'August';
      case 9:
        return 'September';
      case 10:
        return 'October';
      case 11:
        return 'November';
      case 12:
        return 'December';
      default:
        return '';
    }
  }

  String _dayName(int day) {
    switch (day) {
      case 1:
        return 'M';
      case 2:
        return 'T';
      case 3:
        return 'W';
      case 4:
        return 'T';
      case 5:
        return 'F';
      case 6:
        return 'S';
      case 7:
        return 'S';
      default:
        return '';
    }
  }
}
