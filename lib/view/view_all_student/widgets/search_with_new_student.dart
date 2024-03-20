import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sama/core/constants/app_colors.dart';
import 'package:sama/core/constants/app_font_style.dart';
import 'package:sama/core/constants/assets.dart';
import 'package:sama/core/shared/custom_button.dart';
import 'package:sama/core/utils/custom_search.dart';

class SearchWithNewStudent extends StatelessWidget {
  const SearchWithNewStudent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 350 * getScaleFactor(context),
          child: const CustomSearch(),
        ),
        Row(
          children: [
            CustomButton(
              text: "Newest",
              color: AppColors.lightPurple,
              svg: SvgPicture.asset(
                Assets.iconsDropdown,
                width: 20,
              ),
              onPressed: () {},
            ),
            const SizedBox(width: 24),
            CustomButton(
              color: AppColors.primaryPurple,
              iconLeft: true,
              colorText: Colors.white,
              text: "New Student",
              svg: SvgPicture.asset(
                Assets.iconsAdd,
                width: 20 * getScaleFactor(context),
              ),
              onPressed: () {},
            ),
          ],
        )
      ],
    );
  }
}
