import 'package:flutter/material.dart';
import 'package:reasponsiveandadaptiveui/core/utils/app_styles.dart';
import 'package:reasponsiveandadaptiveui/responsive_deshboard/all_expensess/widgets/custom_text_field.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField(
      {super.key, required this.hintText, required this.title});
  final String hintText, title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: AppStyles.styleMedium16(context)),
        const SizedBox(height: 12),
        CustomTextField(
          hintText: hintText,
        ),
      ],
    );
  }
}
