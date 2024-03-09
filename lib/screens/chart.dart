import 'package:dashbord/data/pie_chart_data.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Chart extends StatelessWidget {
  const Chart({super.key});

  @override
  Widget build(BuildContext context) {
    final pieChartData = ChartData();
    return SizedBox(
      height: 15,
      child: Stack(
        children: [
          PieChart(PieChartData(
              sectionsSpace: 2,
              centerSpaceRadius: 20,
              startDegreeOffset: -5,
              sections: pieChartData.pieChartSectionDatas)),
        ],
      ),
    );
  }
}
