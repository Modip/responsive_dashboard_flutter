import 'package:dashbord/constant/constant.dart';
import 'package:fl_chart/fl_chart.dart';

class ChartData {
  final pieChartSectionDatas = [
    PieChartSectionData(
        color: kPinkColor, value: 80, showTitle: false, radius: 20),
    PieChartSectionData(
        color: kGreenColor, value: 25, showTitle: false, radius: 20),
  ];
}

class ChartDataUno {
  final pieChartSectionDatas = [
    PieChartSectionData(
        color: kPinkColor, value: 75, showTitle: false, radius: 8),
    PieChartSectionData(
        color: kGreenColor, value: 25, showTitle: false, radius: 8),
  ];
}

class ChartDataBis {
  final pieChartSectionDatas = [
    PieChartSectionData(
        color: kPinkColor, value: 66, showTitle: false, radius: 8),
    PieChartSectionData(
        color: kGreenColor, value: 34, showTitle: false, radius: 8),
  ];
}

class ChartDataTrie {
  final pieChartSectionDatas = [
    PieChartSectionData(
        color: kPinkColor, value: 24, showTitle: false, radius: 8),
    PieChartSectionData(
        color: kGreenColor, value: 76, showTitle: false, radius: 8),
  ];
}

class ChartDataQuadrie {
  final pieChartSectionDatas = [
    PieChartSectionData(
        color: kPinkColor, value: 32, showTitle: false, radius: 8),
    PieChartSectionData(
        color: kGreenColor, value: 68, showTitle: false, radius: 8),
  ];
}
