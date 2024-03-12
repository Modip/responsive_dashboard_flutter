import 'package:dashbord/constant/constant.dart';
import 'package:dashbord/data/side_menu_data.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    final data = SideMenuData();
    return Container(
        color: Theme.of(context).colorScheme.primary,
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: kWhiteColor,
                image: const DecorationImage(
                    image: AssetImage("assets/img/modip1.png"),
                    fit: BoxFit.cover),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Modip",
              style: TextStyle(
                  fontSize: 14, color: Theme.of(context).colorScheme.tertiary),
            ),
            const Text(
              "Flutter Developer",
              style: TextStyle(
                color: kGreenColor,
                fontSize: 12,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
                height: height * .3,
                width: width * .2,
                child: ListView.builder(
                    itemCount: data.menu.length,
                    itemBuilder: (context, index) => buildMenu(data, index))),
          ],
        ));
  }

  Widget buildMenu(SideMenuData data, int index) {
    final isSelected = selectedIndex == index;
    return Container(
      margin: const EdgeInsets.only(top: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: isSelected ? kPinkColor : Colors.transparent,
      ),
      child: InkWell(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5),
              child: Icon(
                data.menu[index].icon,
                color: Theme.of(context).colorScheme.tertiary,
                size: 18,
              ),
            ),
            Text(
              data.menu[index].title,
              style: TextStyle(
                  fontSize: 12,
                  color: Theme.of(context).colorScheme.tertiary,
                  fontWeight: FontWeight.normal),
            )
          ],
        ),
      ),
    );
  }
}
