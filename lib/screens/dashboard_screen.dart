import 'package:dashbord/screens/activity_screen.dart';
import 'package:dashbord/screens/footer_screen.dart';
import 'package:dashbord/screens/header_screen.dart';
import 'package:dashbord/screens/midle_screen.dart';
import 'package:flutter/material.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          HeaderScreen(),
          SizedBox(
            height: 5,
          ),
          ActivityScreen(),
          SizedBox(
            height: 5,
          ),
          MiddleScreen(),
          SizedBox(
            height: 5,
          ),
          FooterScreen(),
        ],
      ),
    );
  }
}
