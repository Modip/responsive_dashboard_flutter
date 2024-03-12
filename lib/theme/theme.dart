import 'package:dashbord/constant/constant.dart';
import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
      background: kWhiteColor,
      primary: kGrayColor,
      secondary: kGreenColor,
      tertiary: kPrimaryColor),
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
      background: kBackgroundColor,
      primary: kPrimaryColor,
      secondary: kGreenColor,
      tertiary: kWhiteColor),
);
