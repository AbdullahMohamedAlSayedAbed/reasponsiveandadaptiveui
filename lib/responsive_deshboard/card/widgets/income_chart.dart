import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int activeIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(getChartData()));
  }

  PieChartData getChartData() {
    return PieChartData(
        pieTouchData: PieTouchData(
            enabled: true,
            touchCallback: (FlTouchEvent event, pieTouchResponse) {
              activeIndex =
                  pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
              setState(() {});
            }),
        sections: [
          PieChartSectionData(
            value: 40,
            color: const Color(0xff208CC8),
            showTitle: false,
            radius:activeIndex == 0 ? 60 : 50,
          ),
          PieChartSectionData(
            value: 25,
            color: const Color(0xff4EB7F2),
            showTitle: false,
            radius: activeIndex == 1 ? 60 : 50,
          ),
          PieChartSectionData(
            value: 20,
            color: const Color(0xff064061),
            showTitle: false,
            radius: activeIndex == 2 ? 60 : 50,
          ),
          PieChartSectionData(
            value: 22,
            color: const Color(0xffE2DECD),
            showTitle: false,
            radius: activeIndex == 3 ? 60 : 50,
          ),
        ]);
  }
}
