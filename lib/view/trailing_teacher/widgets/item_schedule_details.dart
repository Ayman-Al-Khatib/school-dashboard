import 'package:flutter/material.dart';
import 'package:sama/constants/app_colors.dart';
import 'package:sama/constants/app_font_style.dart';
import 'package:sama/constants/assets.dart';
import 'package:sama/model/schedule_details_model.dart';
import 'package:sama/view/trailing_teacher/trailing_teacher.dart';

class ItemScheduleDetails extends StatelessWidget {
  const ItemScheduleDetails({
    super.key,
    required this.scheduleDetailsModel,
  });

  final ScheduleDetailsModel scheduleDetailsModel;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 386 / 183,
      child: Row(
        children: [
          Container(
            width: 24,
            decoration: BoxDecoration(
              color: scheduleDetailsModel.prefixColor,
              borderRadius: const BorderRadius.horizontal(
                left: Radius.circular(20),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(24 * getScaleFactor(context)),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(20),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      scheduleDetailsModel.title,
                      style: AppFontStyle.styleSemiBold18(context),
                    ),
                  ),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      scheduleDetailsModel.subtitle,
                      style: AppFontStyle.styleRegular14(context).copyWith(
                        color: AppColors.darkGray,
                      ),
                    ),
                  ),
                  const Spacer(),
                  IconWithTextInsideItemScheduleDetails(
                    icon: Assets.iconsCalendar,
                    iconColor: AppColors.accentOrange,
                    text: scheduleDetailsModel.date,
                  ),
                  const SizedBox(height: 4),
                  IconWithTextInsideItemScheduleDetails(
                    icon: Assets.iconsClock,
                    iconColor: AppColors.highlightYellow,
                    text: scheduleDetailsModel.time,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}