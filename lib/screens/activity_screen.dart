import 'package:dashbord/constant/constant.dart';
import 'package:dashbord/screens/chart_bis.dart';
import 'package:dashbord/screens/chart_quadrie.dart';
import 'package:dashbord/screens/chart_trie.dart';
import 'package:dashbord/screens/chart_uno.dart';
import 'package:dashbord/util/responsive.dart';
import 'package:flutter/material.dart';

class ActivityScreen extends StatelessWidget {
  const ActivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return GridView(
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: Responsive.isMobile(context) ? 1 : 4,
            childAspectRatio: Responsive.isMobile(context) ? 15 / 3 : 11 / 5),
        children: [
          Container(
            margin: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: kPrimaryColor,
            ),
            child: Stack(
              children: [
                Positioned(
                  top: Responsive.isMobile(context)
                      ? height * 0.015
                      : height * .03,
                  left: width * 0.015,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.mail_outlined,
                        color: kGreenColor,
                      ),
                      SizedBox(
                        height: Responsive.isTablet(context) ? 1 : 5,
                      ),
                      const Text(
                        "12,344",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(
                        height: Responsive.isTablet(context) ? 1 : 5,
                      ),
                      const Text(
                        "Emails Sent",
                        style: TextStyle(
                          color: kGreenColor,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: Responsive.isMobile(context)
                      ? height * 0.04
                      : height * .05,
                  left: Responsive.isMobile(context) ? width * .8 : width * .14,
                  right: 0,
                  child: Column(
                    children: [
                      const ChartUno(),
                      SizedBox(
                        height: height * .04,
                      ),
                      const Text("+25 %",
                          style: TextStyle(
                            color: kGreenColor,
                            fontSize: 12,
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: kPrimaryColor,
            ),
            child: Stack(
              children: [
                Positioned(
                  top: Responsive.isMobile(context)
                      ? height * 0.015
                      : height * .03,
                  left: width * 0.015,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.person_add_outlined,
                        color: kGreenColor,
                      ),
                      SizedBox(
                        height: Responsive.isTablet(context) ? 1 : 5,
                      ),
                      const Text(
                        "32,948",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(
                        height: Responsive.isTablet(context) ? 1 : 5,
                      ),
                      const Text(
                        "New Clients",
                        style: TextStyle(
                          color: kGreenColor,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: Responsive.isMobile(context)
                      ? height * 0.04
                      : height * .05,
                  left: Responsive.isMobile(context) ? width * .8 : width * .14,
                  right: 0,
                  child: Column(
                    children: [
                      const ChartBis(),
                      SizedBox(
                        height: height * .04,
                      ),
                      const Text(
                        "+34 %",
                        style: TextStyle(
                          color: kGreenColor,
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
            margin: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: kPrimaryColor,
            ),
            child: Stack(
              children: [
                Positioned(
                  top: Responsive.isMobile(context)
                      ? height * 0.015
                      : height * .03,
                  left: width * 0.015,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.sailing_outlined,
                        color: kGreenColor,
                      ),
                      SizedBox(
                        height: Responsive.isTablet(context) ? 1 : 5,
                      ),
                      const Text(
                        "412,344",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(
                        height: Responsive.isTablet(context) ? 1 : 5,
                      ),
                      const Text(
                        "Sails Obtained",
                        style: TextStyle(
                          color: kGreenColor,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: Responsive.isMobile(context)
                      ? height * 0.04
                      : height * .05,
                  left: Responsive.isMobile(context) ? width * .8 : width * .14,
                  right: 0,
                  child: Column(
                    children: [
                      const ChartTrie(),
                      SizedBox(
                        height: height * .04,
                      ),
                      const Text("+76 %",
                          style: TextStyle(
                            color: kGreenColor,
                            fontSize: 12,
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: kPrimaryColor,
            ),
            child: Stack(
              children: [
                Positioned(
                  top: Responsive.isMobile(context)
                      ? height * 0.015
                      : height * .03,
                  left: width * 0.015,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.traffic_outlined,
                        color: kGreenColor,
                      ),
                      SizedBox(
                        height: Responsive.isTablet(context) ? 1 : 5,
                      ),
                      const Text(
                        "1,344,907",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(
                        height: Responsive.isTablet(context) ? 1 : 5,
                      ),
                      const Text(
                        "Traffic Received",
                        style: TextStyle(
                          color: kGreenColor,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: Responsive.isMobile(context)
                      ? height * 0.04
                      : height * .05,
                  left: Responsive.isMobile(context) ? width * .8 : width * .14,
                  right: 0,
                  child: Column(
                    children: [
                      const ChartQuadrie(),
                      SizedBox(
                        height: height * .04,
                      ),
                      const Text(
                        "+68 %",
                        style: TextStyle(
                          color: kGreenColor,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]);
  }
}
