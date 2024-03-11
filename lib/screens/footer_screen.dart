import 'package:dashbord/constant/constant.dart';
import 'package:dashbord/screens/bar_screen.dart';
import 'package:dashbord/screens/chart.dart';
import 'package:dashbord/screens/map_screen.dart';
import 'package:dashbord/util/responsive.dart';
import 'package:flutter/material.dart';

class FooterScreen extends StatelessWidget {
  const FooterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return GridView(
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: Responsive.isMobile(context) ? 1 : 3,
            childAspectRatio: Responsive.isMobile(context) ? 8 / 3 : 9 / 5),
        children: [
          Container(
            margin: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: kPrimaryColor,
            ),
            child: Stack(
              children: [
                Positioned(
                  top: height * 0.015,
                  left: width * 0.015,
                  child: const Text(
                    "Compaign",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),
                Positioned(
                  top: height * 0.09,
                  left: width * 0.01,
                  right: width * 0.01,
                  child: const Column(
                    children: [
                      Chart(),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        "\$99.345 Genereted",
                        style: TextStyle(
                          color: kGreenColor,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Include extra musc and expendatables costs",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: kPrimaryColor,
            ),
            child: Stack(
              children: [
                Positioned(
                  top: height * 0.015,
                  left: width * 0.015,
                  child: const Text(
                    "Sales Quantities",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),
                Positioned(
                  top: height * 0.05,
                  left: width * 0.01,
                  right: width * 0.01,
                  child: const BarScreen(),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: kPrimaryColor,
            ),
            child: Stack(
              children: [
                Positioned(
                  top: height * 0.015,
                  left: width * 0.015,
                  child: const Text(
                    "Geography Based Traffic ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),
                Positioned(
                  top: height * 0.05,
                  left: width * 0.01,
                  right: width * 0.01,
                  child: const MapScreen(),
                ),
              ],
            ),
          ),
        ]);
  }
}
