import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sama/constants/app_colors.dart';
import 'package:sama/constants/app_font_style.dart';
import 'package:sama/constants/assets.dart';

class TrailingDashboardHeader extends StatelessWidget {
  const TrailingDashboardHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: 56 * getScaleFactor(context),
          height: 56 * getScaleFactor(context),
          padding: const EdgeInsets.all(9),
          decoration: BoxDecoration(
            color: AppColors.backgroundWhite,
            borderRadius: BorderRadius.circular(100),
          ),
          child: SvgPicture.asset(
            Assets.iconsBell,
            colorFilter: const ColorFilter.mode(AppColors.darkGray, BlendMode.srcIn),
          ),
        ),
        SizedBox(width: 14 * getScaleFactor(context)),
        Container(
          width: 56 * getScaleFactor(context),
          height: 56 * getScaleFactor(context),
          padding: const EdgeInsets.all(9),
          decoration: BoxDecoration(
            color: AppColors.backgroundWhite,
            borderRadius: BorderRadius.circular(100),
          ),
          child: SvgPicture.asset(
            Assets.iconsGear,
            colorFilter: const ColorFilter.mode(AppColors.darkGray, BlendMode.srcIn),
          ),
        ),
        // SizedBox(width: 20 * getScaleFactor(context)),
        const Spacer(flex: 1),
        Flexible(
          flex: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "Ayman Al-Katib1111111111111111",
                style: AppFontStyle.styleSemiBold14(context).copyWith(
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Text(
                "Admin",
                style: AppFontStyle.styleSemiBold14(context).copyWith(
                  color: AppColors.darkGray,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 20 * getScaleFactor(context)),
        Container(
          width: 55 * getScaleFactor(context),
          height: 55 * getScaleFactor(context),
          // padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            // color: AppColors.primaryPurple,
            borderRadius: BorderRadius.circular(100),
          ),
          // child: SvgPicture.asset(
          //   Assets.iconsUser,
          //   colorFilter: const ColorFilter.mode(AppColors.backgroundWhite, BlendMode.srcIn),
          // ),

          child: Image.asset(
            Assets.imagesLogo,
            color: AppColors.primaryPurple,
          ),
        ),
      ],
    );
  }
}