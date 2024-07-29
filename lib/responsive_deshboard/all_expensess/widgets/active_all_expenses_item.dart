import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reasponsiveandadaptiveui/core/utils/app_styles.dart';
import 'package:reasponsiveandadaptiveui/responsive_deshboard/all_expensess/models/all_expenses_item_model.dart';
import 'package:reasponsiveandadaptiveui/responsive_deshboard/all_expensess/widgets/all_expenses_item_header.dart';

class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({
    super.key,
    required this.itemModel,
  });

  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        decoration: ShapeDecoration(
          color: const Color(0xff4EB7F2),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: const BorderSide(color: Color(0xffF1F1F1), width: 1)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AllExpensesItemHeader(
              backgroundColor: Colors.white.withOpacity(.100000149),
              imageColor: Colors.white,
              image: itemModel.image,
            ),
            const SizedBox(height: 34),
            FittedBox(
                fit: BoxFit.scaleDown,
                alignment: AlignmentDirectional.centerStart,
                child: Text(itemModel.title,
                    style: AppStyles.styleMedium16(context)
                        .copyWith(color: Colors.white))),
            Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 16),
              child: FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(itemModel.date,
                      style: AppStyles.styleRegular14(context)
                          .copyWith(color: const Color(0xfffafafa)))),
            ),
            FittedBox(
                fit: BoxFit.scaleDown,
                alignment: AlignmentDirectional.centerStart,
                child: Text(itemModel.price,
                    style: AppStyles.styleSemiBold24(context)
                        .copyWith(color: Colors.white))),
          ],
        ));
  }
}
