import 'package:flutter/material.dart';
import 'package:reasponsiveandadaptiveui/responsive_deshboard/card/models/transaction_model.dart';

import '../../../core/utils/app_styles.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transactionModel});
  final TransactionModel transactionModel;
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 0,
        color: const Color(0xffFAFAFA),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: ListTile(
          contentPadding:
              const EdgeInsets.only(left: 31, right: 42 - 24, top: 16),
          title: Text(
            transactionModel.title,
            style: AppStyles.styleSemiBold16
                
          ),
          subtitle:
              Text(transactionModel.date, style: AppStyles.styleRegular16
                .copyWith(color: const Color(0xffAAAAAA)),
          ),
          trailing: Text(
            transactionModel.amount,
            style: AppStyles.styleSemiBold20.copyWith(
                color: transactionModel.isWithdrawal
                    ? const Color(0xffF3735E)
                    : const Color(0xff7DD97B)),
          ),
        ));
  }
}
