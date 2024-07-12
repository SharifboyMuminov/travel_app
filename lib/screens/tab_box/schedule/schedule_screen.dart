import 'package:flutter/material.dart';
import 'package:travel_app/screens/tab_box/schedule/widget/calendar.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MyDatePicker(
          onChangedDateTime: (DateTime value) {},
        ),
      ),
    );
  }
}
