import 'package:flutter/material.dart';
import 'package:reasponsiveandadaptiveui/core/utils/size_config.dart';
import 'package:reasponsiveandadaptiveui/responsive_deshboard/card/widgets/detailed_income_chart.dart';
import 'package:reasponsiveandadaptiveui/responsive_deshboard/card/widgets/income_chart.dart';
import 'package:reasponsiveandadaptiveui/responsive_deshboard/card/widgets/income_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return width < 1750 && width >= SizeConfig.desktopSize
        ? const Expanded(child: DetailedIncomeChart())
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: IncomeChart()),
              Expanded(flex: 2, child: IncomeDetails()),
            ],
          );
  }
}
