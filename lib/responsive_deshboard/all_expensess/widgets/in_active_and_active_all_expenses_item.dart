import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reasponsiveandadaptiveui/core/utils/app_styles.dart';
import 'package:reasponsiveandadaptiveui/responsive_deshboard/all_expensess/models/all_expenses_item_model.dart';
import 'package:reasponsiveandadaptiveui/responsive_deshboard/all_expensess/widgets/all_expenses_item_header.dart';

class InActiveAllExpensesItem extends StatelessWidget {
  const InActiveAllExpensesItem({
    super.key,
    required this.itemModel,
  });
   
  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        decoration: ShapeDecoration(
          color: const Color(0xffF1F1F1),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AllExpensesItemHeader(
            
              image: itemModel.image,
            ),
            const SizedBox(height: 34),
            Text(itemModel.title, style: AppStyles.styleMedium16),
            Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 16),
              child: Text(itemModel.date, style: AppStyles.styleRegular14),
            ),
            Text(itemModel.price, style: AppStyles.styleSemiBold24),
          ],
        ));
  }
}

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
            Text(itemModel.title, style: AppStyles.styleMedium16.copyWith(color: Colors.white)),
            Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 16),
              child: Text(itemModel.date, style: AppStyles.styleRegular14.copyWith(color: const Color(0xfffafafa))),
            ),
            Text(itemModel.price, style: AppStyles.styleSemiBold24.copyWith(color: Colors.white)),
          ],
        ));
  }
}