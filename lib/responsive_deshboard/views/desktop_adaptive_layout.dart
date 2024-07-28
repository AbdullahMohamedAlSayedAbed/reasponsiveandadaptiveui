import 'package:flutter/material.dart';
import 'package:reasponsiveandadaptiveui/responsive_deshboard/all_expensess/widgets/all_expensess_widget.dart';
import 'package:reasponsiveandadaptiveui/responsive_deshboard/all_expensess/widgets/quick_invoice.dart';
import 'package:reasponsiveandadaptiveui/responsive_deshboard/drawer/widgets/custom_drawer.dart';

class DesktopAdaptiveLayout extends StatelessWidget {
  const DesktopAdaptiveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(flex: 2, child: Column(
          children: [
            AllExpenses(),
            QuickInvoice(),
          ],
        )),
      ],
    );
  }
}
