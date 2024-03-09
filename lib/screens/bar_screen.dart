import 'package:dashbord/screens/my_bar_graph.dart';
import 'package:flutter/material.dart';

class BarScreen extends StatefulWidget {
  const BarScreen({super.key});

  @override
  State<BarScreen> createState() => _BarScreenState();
}

class _BarScreenState extends State<BarScreen> {
  List<double> weeklySummary = [4.4, 2.5, 40.8, 20.3, 73.9, 99.43, 88.1];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Center(
      child: SizedBox(
        height: height * 0.18,
        child: MyBarGraph(
          weeklySummary: weeklySummary,
        ),
      ),
    );
  }
}
