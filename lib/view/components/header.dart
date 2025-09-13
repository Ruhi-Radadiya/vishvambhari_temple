import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/routes.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(
        left: 16.0,
        right: 16.0,
        top: Get.width / 20,
        bottom: 0,
      ),
      child: Container(
        height: Get.width / 4.2,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            GestureDetector(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: Container(
                height: h * 0.13,
                width: w * 0.13,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 1,
                    bottom: 4,
                    left: 4,
                    right: 4,
                  ),
                  child: Image(
                    image: AssetImage("assets/images/home_images/logo.png"),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: Get.width / 30),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search here...",
                    hintStyle: TextStyle(
                      color: Color(0xff536674),
                      fontSize: 13,
                    ),
                    prefixIcon: const Icon(
                      Icons.search_rounded,
                      size: 18,
                      color: Colors.white24,
                    ),
                    filled: true,
                    fillColor: Color(0xff0A2538),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: Get.width / 26,
                      horizontal: 15,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed(Routes.notificationScreen);
              },
              child: Image(
                image: AssetImage("assets/Icon/hader_1.png"),
                width: Get.width / 22,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
