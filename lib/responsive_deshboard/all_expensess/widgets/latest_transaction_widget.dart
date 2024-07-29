import 'package:flutter/material.dart';
import 'package:reasponsiveandadaptiveui/core/utils/app_styles.dart';
import 'package:reasponsiveandadaptiveui/responsive_deshboard/all_expensess/widgets/quick_invoice.dart';

import 'latest_transaction_list_view.dart';

class LatestTransactionWidget extends StatelessWidget {
  const LatestTransactionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Latest Transaction', style: AppStyles.styleMedium16),
        SizedBox(height: 16),
        LatestTransactionListView(),
      ],
    );
  }
}
