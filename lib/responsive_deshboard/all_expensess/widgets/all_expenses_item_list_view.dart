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
    return Row(
      children: List.generate(items.length, (index) {
        return Expanded(
            child: index == 1
                ? InkWell(
                    onTap: () {
                      setState(() {
                        selected = index;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: AllExpensesItem(
                        itemModel: items[index],
                        isSelected: selected == index,
                      ),
                    ),
                  )
                : InkWell(
                  onTap: () {
                    setState(() {
                        selected = index;
                      });
                  },
                  child: AllExpensesItem(
                      itemModel: items[index],
                      isSelected: selected == index,
                    ),
                ));
      }),
    );
  }
}
