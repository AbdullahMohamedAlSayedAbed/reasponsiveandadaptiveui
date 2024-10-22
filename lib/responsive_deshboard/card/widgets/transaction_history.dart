import 'package:flutter/material.dart';
import 'package:reasponsiveandadaptiveui/core/utils/app_styles.dart';
import 'package:reasponsiveandadaptiveui/responsive_deshboard/card/widgets/transaction_history_list_view.dart';

import 'transaction_history_header.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionHistoryHeader(),
        const SizedBox(height: 20),
        Text('13 April 2022', style: AppStyles.styleMedium16(context)),
        const SizedBox(height: 16),
        const TransactionHistoryListView(),
      ],
    );
  }
}
