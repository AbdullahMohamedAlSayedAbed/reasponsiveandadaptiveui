import 'package:flutter/material.dart';
import 'package:reasponsiveandadaptiveui/core/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.buttonText, this.backgroundColor, this.color});
  final String buttonText;
  final Color? backgroundColor;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor:backgroundColor?? const Color(0xff4EB7F2),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              )),
          onPressed: () {},
          child: Text(
            buttonText,
            style: AppStyles.styleSemiBold18(context).copyWith(
              color: color
            ),
          )),
    );
  }
}
