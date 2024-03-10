import 'package:flutter/material.dart';
import 'package:sama/view/drawer/drawer_view.dart';
import 'package:sama/view/student/widgets/student_with_triling.dart';

class Desktop extends StatelessWidget {
  const Desktop({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 345, child: CustomDrawer()),
        Expanded(
          flex: 1180 + 395,
          child: StudentWithTrailing(),
        ),
      ],
    );
  }
}
