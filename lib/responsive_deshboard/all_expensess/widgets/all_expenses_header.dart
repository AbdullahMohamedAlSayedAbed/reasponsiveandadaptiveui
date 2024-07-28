import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:reasponsiveandadaptiveui/core/utils/app_styles.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('All Expenses', style: AppStyles.styleSemiBold20),
        Container(
          padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: const Color(0xffECECEC), width: 1),
            ),
            child: const Row(
              children: [
                Text('Monthly', style: AppStyles.styleMedium16),
                SizedBox(width: 12),
                Icon(CupertinoIcons.chevron_down,color: Color(0xff064061),)
              ],
            ))
      ],
    );
  }
}
