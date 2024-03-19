import 'package:flutter/material.dart';
import 'package:sama/core/constants/app_font_style.dart';
import 'package:sama/core/shared/title_with_text_field.dart';
 
class CreateColumn extends StatelessWidget {
  const CreateColumn({
    super.key,
    required this.title,
    required this.hint,
    this.maxLinesForField = 1,
    this.maxLinesIndexField = 0,
  });
  final List<String> title;
  final List<List<String>> hint;
  final int maxLinesForField;
  final int maxLinesIndexField;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...List.generate(
          title.length,
          (index) => Padding(
            padding: EdgeInsets.only(bottom: 32 * getScaleFactor(context)),
            child: TitleWithTextField(
              maxLines: index == maxLinesIndexField ? maxLinesForField : 1,
              title: title[index],
              hint: hint[index],
            ),
          ),
        )
      ],
    );
  }
}