import 'package:dashbord/constant/constant.dart';
import 'package:dashbord/data/chart_data.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ChartCard extends StatelessWidget {
  const ChartCard({super.key});

  @override
  Widget build(BuildContext context) {
    final data = LineData();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Revenu Genereted",
          style: TextStyle(color: Colors.white),
        ),
        const SizedBox(
          height: 5,
        ),
        AspectRatio(
          aspectRatio: 10 / 2,
          child: LineChart(
            LineChartData(
                lineTouchData: LineTouchData(handleBuiltInTouches: true),
                gridData: FlGridData(show: false),
                titlesData: FlTitlesData(
                  rightTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  topTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                        // showTitles: true,
                        getTitlesWidget: (double value, TitleMeta meta) {
                          return data.bottomTile[value.toInt()] != null
                              ? SideTitleWidget(
                                  axisSide: meta.axisSide,
                                  child: Text(
                                    data.bottomTile[value.toInt()].toString(),
                                    style: const TextStyle(color: Colors.white),
                                  ))
                              : const SizedBox();
                        },
                        reservedSize: 40,
                        interval: 1,
                        showTitles: true),
                  ),
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                        getTitlesWidget: (double value, TitleMeta meta) {
                          return data.leftTile[value.toInt()] != null
                              ? SideTitleWidget(
                                  axisSide: meta.axisSide,
                                  child: Text(
                                    data.leftTile[value.toInt()].toString(),
                                    style: const TextStyle(color: Colors.white),
                                  ))
                              : const SizedBox();
                        },
                        reservedSize: 40,
                        interval: 1,
                        showTitles: true),
                  ),
                ),
                borderData: FlBorderData(show: false),
                lineBarsData: [
                  LineChartBarData(
                      color: kPinkColor,
                      barWidth: 2.5,
                      belowBarData: BarAreaData(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                kPinkColor.withOpacity(0.5),
                                Colors.transparent
                              ]),
                          show: true),
                      dotData: FlDotData(show: false),
                      spots: data.spots)
                ],
                minX: 0,
                maxX: 120,
                maxY: 105,
                minY: -5),
          ),
        ),
      ],
    );
  }
}
