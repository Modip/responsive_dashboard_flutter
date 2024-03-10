import 'package:dashbord/constant/constant.dart';
import 'package:dashbord/screens/dashboard_screen.dart';
import 'package:dashbord/screens/side_menu.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: SideMenu(),
            ),
            Expanded(flex: 7, child: DashBoardScreen()),
          ],
        ),
      ),
    );
  }
}
