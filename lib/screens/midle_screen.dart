import 'package:dashbord/constant/constant.dart';
import 'package:dashbord/data/activity_data.dart';
import 'package:dashbord/screens/chart_cart.dart';
import 'package:dashbord/screens/recent_screen.dart';
import 'package:dashbord/util/responsive.dart';
import 'package:flutter/material.dart';

class MiddleScreen extends StatelessWidget {
  const MiddleScreen({super.key});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    final activities = ActivityData();
    return LayoutBuilder(builder: (context, constraints) {
      if (Responsive.isMobile(context)) {
        return Expanded(
          child: Column(
            children: [
              Container(
                height: height * .45,
                width: width,
                decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(8)),
                margin: const EdgeInsets.only(left: 15, right: 15),
                child: const ChartCard(),
              ),
              SizedBox(
                height: height * .01,
              ),
              Container(
                height: height * .45,
                width: width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: kPrimaryColor,
                ),
                margin: const EdgeInsets.only(left: 15, right: 15),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(12),
                            child: Text(
                              "Recent Transactions",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                            ),
                          )
                        ],
                      ),
                      Container(
                        //  width: width * .28,
                        color: kBackgroundColor,
                        child: Scrollbar(
                          trackVisibility: true,
                          thickness: 50,
                          radius: const Radius.circular(16),
                          child: ListView.builder(
                              itemCount: activities.activityData.length,
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              itemBuilder: (context, index) => RecentScreen(
                                  activity: activities.activityData[index])),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      } else {
        return Expanded(
          child: Row(
            children: [
              Container(
                height: height * .34,
                width: width * .56,
                decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(8)),
                margin: const EdgeInsets.only(left: 15),
                child: const ChartCard(),
              ),
              SizedBox(
                width: width * .01,
              ),
              Container(
                height: height * .34,
                width: Responsive.isTablet(context) ? width * .38 : width * .27,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: kPrimaryColor,
                ),
                margin: const EdgeInsets.only(
                  left: 15,
                ),
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
                        //  width: width * .28,
                        color: kBackgroundColor,
                        child: Scrollbar(
                          trackVisibility: true,
                          thickness: 50,
                          radius: const Radius.circular(16),
                          child: ListView.builder(
                              itemCount: activities.activityData.length,
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              itemBuilder: (context, index) => RecentScreen(
                                  activity: activities.activityData[index])),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      }
    });
  }
}
