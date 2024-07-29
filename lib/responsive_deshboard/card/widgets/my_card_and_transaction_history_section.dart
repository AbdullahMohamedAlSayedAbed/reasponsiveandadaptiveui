import 'package:flutter/material.dart';
import 'package:reasponsiveandadaptiveui/core/widgets/custom_background_container.dart';
import 'package:reasponsiveandadaptiveui/responsive_deshboard/card/widgets/my_cards_sections.dart';
import 'package:reasponsiveandadaptiveui/responsive_deshboard/card/widgets/transaction_history.dart';

class MyCardAndTransactionHistorySection extends StatelessWidget {
  const MyCardAndTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        child: Column(
      children: [
        MyCardsSections(),
        Divider(height: 40,color: Color(0xffF1F1F1),thickness: 1),
        TransactionHistory(),
      ],
    ));
  }
}
