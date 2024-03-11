import 'package:dashbord/screens/dashboard_screen.dart';
import 'package:dashbord/screens/side_menu.dart';
import 'package:dashbord/util/responsive.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);
    return Scaffold(
      drawer: !isDesktop
          ? const SizedBox(
              width: 200,
              child: SideMenu(),
            )
          : null,
      body: SafeArea(
        child: Row(
          children: [
            if (isDesktop)
              const Expanded(
                flex: 1,
                child: SideMenu(),
              ),
            const Expanded(flex: 7, child: DashBoardScreen()),
          ],
        ),
      ),
    );
  }
}
