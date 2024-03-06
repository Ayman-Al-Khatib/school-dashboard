import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sama/constants/app_colors.dart';
import 'package:sama/controller/drawer_controller.dart';
import 'package:sama/view/drawer/widgets/drawer_header.dart';
import 'package:sama/view/drawer/widgets/drawer_list_item.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Get.put(DrawerControllerImp());
    return CustomScrollView(slivers: [
      SliverFillRemaining(
        hasScrollBody: false,
        child: Container(
          color: AppColors.primaryPurple,
          child: const Padding(
            padding: EdgeInsets.only(left: 40, top: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DrawerTitle(),
                SizedBox(height: 32),
                DrawerListItem(),
              ],
            ),
          ),
        ),
      ),
    ]);
  }
}