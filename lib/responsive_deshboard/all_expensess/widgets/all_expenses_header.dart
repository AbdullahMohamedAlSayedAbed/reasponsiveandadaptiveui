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
         Text('All Expenses', style: AppStyles.styleSemiBold20(context)),
        Container(
          padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: const Color(0xffECECEC), width: 1),
            ),
            child:  Row(
              children: [
                Text('Monthly', style: AppStyles.styleMedium16(context)),
                SizedBox(width: 12),
                Icon(CupertinoIcons.chevron_down,color: Color(0xff064061),)
              ],
            ))
      ],
    );
  }
}
