import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sama/controller/add_new_teacher_controller.dart';
import 'package:sama/controller/navigations_controller.dart';
import 'package:sama/core/enum/navigations_enum.dart';
import 'package:sama/core/utils/header_with_search.dart';
import 'package:sama/view/new_teatcher/widgets/add_details_teacher.dart';
import 'package:sama/view/new_teatcher/widgets/education_datails.dart';
import 'package:sama/core/shared/save_and_submit_button.dart';

class AddNewTeacher extends StatelessWidget {
  const AddNewTeacher({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(AddNewTeacherControllerImp());

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          children: [
            const HeaderWithSearch(title: "Add New Teacher", showSearch: false),
            const SizedBox(height: 28),
            const AddDetailsTeacher(),
            const SizedBox(height: 40),
            const EducationDatails(),
            const SizedBox(height: 40),
            SaveAndSubmitButton(
              onPressedSubbmit: () async {
                await Get.find<AddNewTeacherControllerImp>().addNewTeacher();
                Get.find<NavigationControllerImp>().replaceLastWidget(NavigationEnum.Teachers);
              },
            ),
          ],
        ),
      ),
    );
  }
}
