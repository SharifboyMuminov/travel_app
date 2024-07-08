import 'package:flutter/material.dart';
import 'package:travel_app/utils/app_size.dart';

class TopItem extends StatelessWidget {
  const TopItem({super.key, required this.pageController});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 444.he,
      child: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: List.generate(3, (index) {
          return Image.asset(
            "assets/images/onboarding_${index + 1}.png",
            fit: BoxFit.fill,
          );
        }),
      ),
    );
  }
}
