import 'package:dashbord/constant/constant.dart';
import 'package:flutter/material.dart';

class RecentScreen extends StatelessWidget {
  final activity;
  const RecentScreen({super.key, required this.activity});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Container(
        margin: const EdgeInsets.only(
          top: 5,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Theme.of(context).colorScheme.primary,
        ),
        height: height * .08,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                activity.title,
                style: const TextStyle(
                  color: kGreenColor,
                  fontSize: 12,
                ),
              ),
            ),
            Text(
              activity.date,
              style: TextStyle(
                color: Theme.of(context).colorScheme.tertiary,
                fontSize: 12,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                activity.value,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.tertiary,
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ));
  }
}
