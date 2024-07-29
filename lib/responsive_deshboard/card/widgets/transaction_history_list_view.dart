import 'package:flutter/material.dart';
import 'package:reasponsiveandadaptiveui/responsive_deshboard/card/models/transaction_model.dart';
import 'package:reasponsiveandadaptiveui/responsive_deshboard/card/widgets/transaction_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});
  static const items = [
    TransactionModel(
        title: 'Cash Withdrawal',
        amount: r'$20,129',
        date: '13 Apr, 2022',
        isWithdrawal: true),
    TransactionModel(
        title: 'Landing Page project',
        amount: r'$2,000',
        date: '13 Apr, 2022 at 3:30 PM',
        isWithdrawal: false),
    TransactionModel(
        title: 'Juni Mobile App project',
        amount: r'$20,129',
        date: '13 Apr, 2022 at 3:30 PM',
        isWithdrawal: false),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) {
      return TransactionItem(
        transactionModel: items[index],
      );
    },);
  }
}
