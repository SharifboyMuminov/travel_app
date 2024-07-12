import 'package:flutter/material.dart';
import 'package:travel_app/utils/app_size.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({super.key, required this.imagePath});
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration:  BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            imagePath,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: SizedBox(
        width: width,
        height: height,
      ),
    );
  }
}
