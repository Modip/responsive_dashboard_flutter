import 'package:dashbord/constant/constant.dart';
import 'package:flutter/material.dart';

class RecentScreen extends StatelessWidget {
  final activity;
  const RecentScreen({super.key, required this.activity});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Container(
        margin: const EdgeInsets.only(
          top: 5,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: kPrimaryColor,
        ),
        height: height * .08,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                activity.title,
                style: TextStyle(
                  color: kGreenColor,
                  fontSize: width * .008,
                ),
              ),
            ),
            Text(
              activity.date,
              style: TextStyle(
                color: Colors.white,
                fontSize: width * .008,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                activity.value,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: width * .008,
                ),
              ),
            ),
          ],
        ));
  }
}
