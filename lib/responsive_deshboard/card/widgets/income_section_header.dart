import 'dart:math';
import 'package:flutter/material.dart';
import 'package:reasponsiveandadaptiveui/core/utils/app_styles.dart';

class IncomeSectionHeader extends StatelessWidget {
  const IncomeSectionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Text('Income', style: AppStyles.styleSemiBold20(context)),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: const ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Color(0xffF1F1F1), width: 1),
                borderRadius: BorderRadius.all(Radius.circular(12)),
              )),
          child: Row(
            children: [
               Text('Monthly', style: AppStyles.styleMedium16(context)),
              const SizedBox(width: 16),
              Transform.rotate(
                  angle: -pi / 2, child: const Icon(Icons.arrow_back_ios_new))
            ],
          ),
        ),
      ],
    );
  }
}
