import 'package:dashbord/screens/activity_screen.dart';
import 'package:dashbord/screens/chart_cart.dart';
import 'package:dashbord/screens/header_screen.dart';
import 'package:flutter/material.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 12,
          ),
          HeaderSceen(),
          SizedBox(
            height: 12,
          ),
          ActivityScreen(),
          SizedBox(
            height: 12,
          ),
          ChartCard(),
        ],
      ),
    );
  }
}
