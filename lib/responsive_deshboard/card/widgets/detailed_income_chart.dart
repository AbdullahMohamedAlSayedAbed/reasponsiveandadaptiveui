import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:reasponsiveandadaptiveui/core/utils/app_styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  int activeIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartData()));
  }

  PieChartData getChartData() {
    return PieChartData(
        sectionsSpace: 0,
        pieTouchData: PieTouchData(
            enabled: true,
            touchCallback: (FlTouchEvent event, pieTouchResponse) {
              activeIndex =
                  pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
              setState(() {});
            }),
        sections: [
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 0 ? 1.4 : null,
            value: 40,
            title: activeIndex == 0 ? 'Design service' : "40%",
            titleStyle: AppStyles.styleMedium16(context).copyWith(
              color: activeIndex == 0 ? null : Colors.white,
            ),
            color: const Color(0xff208CC8),
            radius: activeIndex == 0 ? 60 : 50,
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 1 ? 2.2 : null,
            title: activeIndex == 1 ? 'Design product' : "25%",
            titleStyle: AppStyles.styleMedium16(context).copyWith(
              color: activeIndex == 1 ? null : Colors.white,
            ),
            value: 25,
            color: const Color(0xff4EB7F2),
            radius: activeIndex == 1 ? 60 : 50,
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 2 ? 1.3 : null,
            title: activeIndex == 2 ? 'Product Royalti' : "20%",
            titleStyle: AppStyles.styleMedium16(context).copyWith(
              color: activeIndex == 2 ? null : Colors.white,
            ),
            value: 20,
            color: const Color(0xff064061),
            radius: activeIndex == 2 ? 60 : 50,
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 3 ? 1.4 : null,
            title: activeIndex == 3 ? 'Other' : "22%",
            titleStyle: AppStyles.styleMedium16(context).copyWith(
              color: activeIndex == 3 ? null : Colors.white,
            ),
            value: 22,
            color: const Color(0xffE2DECD),
            radius: activeIndex == 3 ? 60 : 50,
          ),
        ]);
  }
}
