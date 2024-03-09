import 'package:dashbord/constant/constant.dart';
import 'package:dashbord/screens/chart_cart.dart';
import 'package:dashbord/screens/recent_screen.dart';
import 'package:flutter/material.dart';

class MiddleScreen extends StatelessWidget {
  const MiddleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Row(
      children: [
        Container(
          height: height * .3,
          width: width * .5,
          decoration: BoxDecoration(
              color: kPrimaryColor, borderRadius: BorderRadius.circular(8)),
          margin: const EdgeInsets.only(left: 15),
          child: const ChartCard(),
        ),
        SizedBox(
          width: width * .008,
        ),
        Container(
          height: height * .3,
          width: width * .235,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: kPrimaryColor,
          ),
          margin: const EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Text(
                        "Recent Transactions",
                        style: TextStyle(
                            fontSize: width * .01, color: Colors.white),
                      ),
                    )
                  ],
                ),
                Container(
                  width: width * .25,
                  color: kBackgroundColor,
                  child: Scrollbar(
                    trackVisibility: true,
                    thickness: 50,
                    radius: const Radius.circular(16),
                    child: ListView.builder(
                        itemCount: 10,
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemBuilder: (context, index) => const RecentScreen()),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
