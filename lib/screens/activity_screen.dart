import 'package:dashbord/constant/constant.dart';
import 'package:dashbord/screens/chart_bis.dart';
import 'package:dashbord/screens/chart_quadrie.dart';
import 'package:dashbord/screens/chart_trie.dart';
import 'package:dashbord/screens/chart_uno.dart';
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
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, childAspectRatio: 11 / 5),
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
                  top: height * 0.03,
                  left: width * 0.015,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.mail_outlined,
                        color: kGreenColor,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "12,344",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: width * .008,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Emails Sent",
                        style: TextStyle(
                          color: kGreenColor,
                          fontSize: width * .008,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: height * 0.05,
                  left: width * .12,
                  right: 0,
                  child: Column(
                    children: [
                      const ChartUno(),
                      SizedBox(
                        height: height * .04,
                      ),
                      Text("+25 %",
                          style: TextStyle(
                            color: kGreenColor,
                            fontSize: width * .008,
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
                  top: height * 0.03,
                  left: width * 0.015,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.person_add_outlined,
                        color: kGreenColor,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "32,948",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: width * .008,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "New Clients",
                        style: TextStyle(
                          color: kGreenColor,
                          fontSize: width * .008,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: height * 0.05,
                  left: width * .12,
                  right: 0,
                  child: Column(
                    children: [
                      const ChartBis(),
                      SizedBox(
                        height: height * .04,
                      ),
                      Text(
                        "+34 %",
                        style: TextStyle(
                          color: kGreenColor,
                          fontSize: width * .008,
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
                  top: height * 0.03,
                  left: width * 0.015,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.sailing_outlined,
                        color: kGreenColor,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "412,344",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: width * .008,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Sails Obtained",
                        style: TextStyle(
                          color: kGreenColor,
                          fontSize: width * .008,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: height * 0.05,
                  left: width * .12,
                  right: 0,
                  child: Column(
                    children: [
                      const ChartTrie(),
                      SizedBox(
                        height: height * .04,
                      ),
                      Text("+76 %",
                          style: TextStyle(
                            color: kGreenColor,
                            fontSize: width * .008,
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
                  top: height * 0.03,
                  left: width * 0.015,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.traffic_outlined,
                        color: kGreenColor,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "1,344,907",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: width * .008,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Traffic Received",
                        style: TextStyle(
                          color: kGreenColor,
                          fontSize: width * .008,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: height * 0.05,
                  left: width * .12,
                  right: 0,
                  child: Column(
                    children: [
                      const ChartQuadrie(),
                      SizedBox(
                        height: height * .04,
                      ),
                      Text(
                        "+68 %",
                        style: TextStyle(
                          color: kGreenColor,
                          fontSize: width * .008,
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
