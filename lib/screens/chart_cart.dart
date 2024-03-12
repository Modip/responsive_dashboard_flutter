import 'package:dashbord/constant/constant.dart';
import 'package:dashbord/data/chart_data.dart';
import 'package:dashbord/util/responsive.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ChartCard extends StatelessWidget {
  const ChartCard({super.key});

  @override
  Widget build(BuildContext context) {
    final data = LineData();
    return SingleChildScrollView(
      child: LayoutBuilder(builder: (context, constraints) {
        if (Responsive.isMobile(context)) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12.0, top: 8),
                child: Text(
                  "Revenu Genereted",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.tertiary,
                    fontSize: 14,
                  ),
                ),
              ),
              AspectRatio(
                aspectRatio: 2 / 1,
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
                              getTitlesWidget: (double value, TitleMeta meta) {
                                return data.bottomTile[value.toInt()] != null
                                    ? SideTitleWidget(
                                        axisSide: meta.axisSide,
                                        child: Text(
                                          data.bottomTile[value.toInt()]
                                              .toString(),
                                          style: TextStyle(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .tertiary,
                                              fontSize: 10),
                                        ),
                                      )
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
                                          data.leftTile[value.toInt()]
                                              .toString(),
                                          style: TextStyle(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .tertiary,
                                              fontSize: 10),
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
                      maxY: 120,
                      minY: -10),
                ),
              ),
            ],
          );
        } else if (Responsive.isTablet(context)) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12.0, top: 8),
                child: Text(
                  "Revenu Genereted",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.tertiary,
                    fontSize: 14,
                  ),
                ),
              ),
              AspectRatio(
                aspectRatio: 3 / 1,
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
                              getTitlesWidget: (double value, TitleMeta meta) {
                                return data.bottomTile[value.toInt()] != null
                                    ? SideTitleWidget(
                                        axisSide: meta.axisSide,
                                        child: Text(
                                          data.bottomTile[value.toInt()]
                                              .toString(),
                                          style: TextStyle(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .tertiary,
                                              fontSize: 10),
                                        ),
                                      )
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
                                          data.leftTile[value.toInt()]
                                              .toString(),
                                          style: TextStyle(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .tertiary,
                                              fontSize: 10),
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
                      maxY: 120,
                      minY: -10),
                ),
              ),
            ],
          );
        } else {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12.0, top: 8),
                child: Text(
                  "Revenu Genereted",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.tertiary,
                    fontSize: 14,
                  ),
                ),
              ),
              AspectRatio(
                aspectRatio: 4 / 1,
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
                              getTitlesWidget: (double value, TitleMeta meta) {
                                return data.bottomTile[value.toInt()] != null
                                    ? SideTitleWidget(
                                        axisSide: meta.axisSide,
                                        child: Text(
                                          data.bottomTile[value.toInt()]
                                              .toString(),
                                          style: TextStyle(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .tertiary,
                                              fontSize: 10),
                                        ),
                                      )
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
                                          data.leftTile[value.toInt()]
                                              .toString(),
                                          style: TextStyle(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .tertiary,
                                              fontSize: 10),
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
                      maxY: 120,
                      minY: -10),
                ),
              ),
            ],
          );
        }
      }),
    );
  }
}
