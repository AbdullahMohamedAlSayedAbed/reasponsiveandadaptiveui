import 'package:flutter/material.dart';
import 'package:reasponsiveandadaptiveui/core/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText});
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          filled: true,
          fillColor: const Color(0xffFAFAFA),
          border: buildBorder(),
          focusedBorder: buildBorder(),
          enabledBorder: buildBorder(),
          hintText: hintText,
          hintStyle: AppStyles.styleRegular16
              .copyWith(color: const Color(0xffAAAAAA))),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Color(0xffFAFAFA), width: 1),
    );
  }
}
