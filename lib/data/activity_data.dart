import 'package:dashbord/model/activity_model.dart';
import 'package:flutter/material.dart';

class ActivityData {
  final activityData = const [
    ActivityModel(
        icon: Icons.mail_outlined, value: "12,361", title: "Emails Sent"),
    ActivityModel(
        icon: Icons.sailing_outlined,
        value: "431,225",
        title: "Sails Obtained"),
    ActivityModel(
        icon: Icons.person_add_outlined, value: "32,467", title: "New Clients"),
    ActivityModel(
        icon: Icons.traffic_outlined,
        value: "1,344,907",
        title: "Traffic Recevied"),
  ];
}
