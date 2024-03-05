import 'package:dashbord/model/menu_model.dart';
import 'package:flutter/material.dart';

class SideMenuData {
  final menu = const <Menu>[
    Menu(icon: Icons.home, title: "Dashboard"),
    Menu(icon: Icons.person, title: "Profile"),
    Menu(icon: Icons.settings, title: "Settings"),
    Menu(icon: Icons.logout, title: "LogOut"),
  ];
}
