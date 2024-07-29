import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reasponsiveandadaptiveui/core/utils/app_images.dart';
import 'package:reasponsiveandadaptiveui/responsive_deshboard/all_expensess/models/all_expenses_item_model.dart';
import 'package:reasponsiveandadaptiveui/responsive_deshboard/all_expensess/widgets/all_expenses_item.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({super.key});

  @override
  State<AllExpensesItemListView> createState() =>
      _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  final items = [
    const AllExpensesItemModel(
        title: 'Balance',
        image: Assets.imagesMoneys,
        price: r'$20,129',
        date: 'April 2022'),
    const AllExpensesItemModel(
        title: 'Income',
        image: Assets.imagesIncome,
        price: r'$20,129',
        date: 'April 2022'),
    const AllExpensesItemModel(
        title: 'Expenses',
        image: Assets.imagesExpenses,
        price: r'$20,129',
        date: 'April 2022'),
  ];
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
          child: InkWell(
        onTap: () {
          setState(() {
            selected = 0;
          });
        },
        child: AllExpensesItem(
          itemModel: items[0],
          isSelected: selected == 0,
        ),
      )),
      const SizedBox(width: 12),
      Expanded(
          child: InkWell(
        onTap: () {
          setState(() {
            selected = 1;
          });
        },
        child: AllExpensesItem(
          itemModel: items[1],
          isSelected: selected == 1,
        ),
      )),
      const SizedBox(width: 12),
      Expanded(
          child: InkWell(
        onTap: () {
          setState(() {
            selected = 2;
          });
        },
        child: AllExpensesItem(
          itemModel: items[2],
          isSelected: selected == 2,
        ),
      )),
    ]);
  }
}
