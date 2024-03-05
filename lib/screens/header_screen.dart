import 'package:dashbord/constant/constant.dart';
import 'package:flutter/material.dart';

class HeaderSceen extends StatelessWidget {
  const HeaderSceen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 150,
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
                        borderSide: const BorderSide(color: Colors.black),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 5),
                      hintText: "Search",
                      hintStyle: const TextStyle(color: Colors.grey),
                      suffixIcon: const Icon(
                        Icons.search_outlined,
                        color: Colors.grey,
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
                        color: Colors.grey,
                        size: 20,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.notification_add_outlined,
                        color: Colors.grey,
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
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "DASHBOARD",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "Welcome to your dashboard",
                  style: TextStyle(color: kGreenColor, fontSize: 10),
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
