import 'package:dashbord/constant/constant.dart';
import 'package:dashbord/theme/theme_provider.dart';
import 'package:dashbord/util/responsive.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HeaderScreen extends StatelessWidget {
  const HeaderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                if (!Responsive.isDesktop(context))
                  Padding(
                    padding: const EdgeInsets.only(left: 4.0),
                    child: InkWell(
                      onTap: () => Scaffold.of(context).openDrawer(),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Icon(
                          Icons.menu,
                          color: Theme.of(context).colorScheme.tertiary,
                          size: 25,
                        ),
                      ),
                    ),
                  ),
                if (!Responsive.isMobile(context))
                  Container(
                    width: width * .12,
                    height: height * .078,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Theme.of(context).colorScheme.primary,
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(
                              color: Theme.of(context).colorScheme.tertiary),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 5),
                        hintText: "Search",
                        hintStyle: TextStyle(
                            color: Theme.of(context).colorScheme.tertiary),
                        suffixIcon: Icon(
                          Icons.search_outlined,
                          color: Theme.of(context).colorScheme.tertiary,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                if (Responsive.isMobile(context))
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Icon(
                          Icons.search_outlined,
                          color: Theme.of(context).colorScheme.tertiary,
                          size: 25,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
            Container(
                padding: const EdgeInsets.all(10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      InkWell(
                          onTap: () {
                            Provider.of<ThemeProvider>(context, listen: false)
                                .toggleTheme();
                          },
                          child: Icon(
                            Icons.dark_mode_outlined,
                            color: Theme.of(context).colorScheme.tertiary,
                            size: 20,
                          )),
                      const SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.notification_add_outlined,
                        color: Theme.of(context).colorScheme.tertiary,
                        size: 20,
                      ),
                    ],
                  ),
                ))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 14.0),
                  child: Text(
                    "DASHBOARD",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.tertiary,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 14.0),
                  child: Text(
                    "Welcome to your dashboard",
                    style: TextStyle(color: kGreenColor, fontSize: 10),
                  ),
                ),
              ],
            ),
            if (!Responsive.isMobile(context))
              Container(
                height: height * .06,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12), color: kPinkColor),
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.only(right: 20),
                child: TextButton(
                  onPressed: () {},
                  child: const Row(
                    children: [
                      Icon(
                        Icons.download_outlined,
                        color: Colors.white,
                        size: 20,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "DOWNLOAD REPORT",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      )
                    ],
                  ),
                ),
              ),
            if (Responsive.isMobile(context))
              InkWell(
                onTap: () {},
                child: const Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child: Icon(
                    Icons.download_outlined,
                    color: kGreenColor,
                    size: 25,
                  ),
                ),
              ),
          ],
        ),
      ],
    );
  }
}
