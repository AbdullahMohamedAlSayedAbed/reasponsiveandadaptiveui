import 'package:flutter/material.dart';
import 'package:reasponsiveandadaptiveui/core/utils/app_styles.dart';

import 'latest_transaction_list_view.dart';

class LatestTransactionWidget extends StatelessWidget {
  const LatestTransactionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Latest Transaction', style: AppStyles.styleMedium16(context)),
        const SizedBox(height: 16),
        const LatestTransactionListView(),
      ],
    );
  }
}
