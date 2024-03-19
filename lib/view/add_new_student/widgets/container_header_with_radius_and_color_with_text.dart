import 'package:flutter/material.dart';
import 'package:sama/core/constants/app_colors.dart';
import 'package:sama/core/constants/app_font_style.dart';

class ContainerHeaderWithRadiusAndColorWithText extends StatelessWidget {
  const ContainerHeaderWithRadiusAndColorWithText({
    super.key, required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1500 / 62,
      child: Container(
        padding: EdgeInsets.only(left: 40 * getScaleFactor(context)),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20)),
          color: AppColors.primaryPurple,
        ),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            title,
            style: AppFontStyle.styleBold24(context, lower: 0.6).copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
