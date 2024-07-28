import 'package:flutter/material.dart';
import 'package:reasponsiveandadaptiveui/core/widgets/custom_background_container.dart';

import '../../../core/utils/app_styles.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        child: Column(
      children: [
        QuickInvoiceHeader(),
      ],
    ));
  }
}

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text('Quick Invoice', style: AppStyles.styleSemiBold20),
        const Spacer(),
        Container(
            width: 48,
            height: 48,
            decoration: const ShapeDecoration(
                color: Color(0xffFAFAFA), shape: OvalBorder()),
            child: const Icon(Icons.add, color: Color(0xff4EB7F2))),
      ],
    );
  }
}
