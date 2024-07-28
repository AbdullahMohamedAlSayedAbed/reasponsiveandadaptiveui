import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reasponsiveandadaptiveui/responsive_deshboard/all_expensess/models/all_expenses_item_model.dart';

import 'in_active_and_active_all_expenses_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key, required this.itemModel, required this.isSelected});
  final AllExpensesItemModel itemModel;
  final bool isSelected;
 
  @override
  Widget build(BuildContext context) {
    return isSelected ? ActiveAllExpensesItem(itemModel: itemModel) : InActiveAllExpensesItem(itemModel: itemModel,);
  }
}
