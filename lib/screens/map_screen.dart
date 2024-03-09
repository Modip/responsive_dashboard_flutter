import 'package:countries_world_map/countries_world_map.dart';
import 'package:countries_world_map/data/maps/world_map.dart';
import 'package:dashbord/constant/constant.dart';
import 'package:flutter/material.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
        height: height * 0.22,
        child: Center(
            child: SimpleMap(
          // String of instructions to draw the map.
          instructions: SMapWorld.instructions,

          // Default color for all countries.
          defaultColor: Colors.white,

          // Matching class to specify custom colors for each area.
          colors: const SMapWorldColors(
            uS: kPinkColor,
            cN: kPinkColor,
            sN: kPinkColor,
            mR: kPinkColor,
            zA: kPinkColor,
            eT: kPinkColor,
            rW: kPinkColor,
            bR: kPinkColor,
          ).toMap(),

          // Details of what area is being touched, giving you the ID, name and tapdetails
          callback: (id, name, tapdetails) {
            print(name);
          },
        )));
  }
}
