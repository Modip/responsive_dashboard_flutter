import 'package:dashbord/constant/constant.dart';
import 'package:flutter/material.dart';

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
            Container(
              width: width * .12,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
              ),
              child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: kPrimaryColor,
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: const BorderSide(color: Colors.white),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 5),
                      hintText: "Search",
                      hintStyle: const TextStyle(color: Colors.white),
                      suffixIcon: const Icon(
                        Icons.search_outlined,
                        color: Colors.white,
                        size: 20,
                      ))),
            ),
            Container(
                padding: const EdgeInsets.all(10),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.dark_mode_outlined,
                        color: Colors.white,
                        size: 20,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.notification_add_outlined,
                        color: Colors.white,
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
                  padding: EdgeInsets.only(left: 14.0),
                  child: Text(
                    "DASHBOARD",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: width * .012,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 14.0),
                  child: Text(
                    "Welcome to your dashboard",
                    style: TextStyle(color: kGreenColor, fontSize: 10),
                  ),
                ),
              ],
            ),
            Container(
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
          ],
        ),
      ],
    );
  }
}
