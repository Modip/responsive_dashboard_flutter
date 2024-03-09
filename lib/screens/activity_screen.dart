import 'package:dashbord/constant/constant.dart';
import 'package:dashbord/data/activity_data.dart';
import 'package:flutter/material.dart';

class ActivityScreen extends StatelessWidget {
  const ActivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final activities = ActivityData();
    return GridView.builder(
      itemCount: activities.activityData.length,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 11 / 5,
          crossAxisCount: 4,
          crossAxisSpacing: 0,
          mainAxisSpacing: 0.0),
      itemBuilder: (context, index) => Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: kPrimaryColor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Icon(
                  activities.activityData[index].icon,
                  color: kGreenColor,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  activities.activityData[index].title,
                  style: const TextStyle(
                    color: kGreenColor,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  height: 50,
                  color: Colors.red,
                  child: const Text("Diagramme"),
                ),
                Text(
                  activities.activityData[index].value,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
