import 'package:dashbord/data/pie_chart_data.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ChartTrie extends StatelessWidget {
  const ChartTrie({super.key});

  @override
  Widget build(BuildContext context) {
    final pieChartData = ChartDataTrie();
    return SizedBox(
      height: 8,
      child: Stack(
        children: [
          PieChart(PieChartData(
              sectionsSpace: 2,
              centerSpaceRadius: 10,
              startDegreeOffset: -5,
              sections: pieChartData.pieChartSectionDatas)),
        ],
      ),
    );
  }
}
