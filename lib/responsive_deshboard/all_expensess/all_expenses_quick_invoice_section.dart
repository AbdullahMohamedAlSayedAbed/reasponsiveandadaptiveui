import 'package:flutter/material.dart';
import 'package:reasponsiveandadaptiveui/responsive_deshboard/all_expensess/widgets/quick_invoice.dart';

import 'widgets/all_expensess_widget.dart';

class AllExpensesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AllExpenses(),
        SizedBox(height: 24),
        QuickInvoice(),
      ],
    );
  }
}
