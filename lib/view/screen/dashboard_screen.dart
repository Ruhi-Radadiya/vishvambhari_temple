import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vishvambhari_temple/view/screen/about_screen/about.dart';
import 'package:vishvambhari_temple/view/screen/download_screen/download.dart';
import 'package:vishvambhari_temple/view/screen/profile_screen/profile.dart';
import 'package:vishvambhari_temple/view/screen/setting_screen/setting.dart';

import '../../controller/bottom_navigation_bar.dart';
import 'home_screen/home.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    NavigationController controller = Get.put(NavigationController());

    return Scaffold(
      body: PageView(
        controller: controller.pageController,
        onPageChanged: (index) {
          controller.getIndex(index: index);
        },
        children: const [About(), Download(), Home(), Profile(), Setting()],
      ),
      bottomNavigationBar: Obx(() {
        return SizedBox(
          height: Get.width / 5,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: const Color(0xff0c2e49),
            currentIndex: controller.bottomNavigationIndex.value,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white.withValues(alpha: 0.6),
            selectedLabelStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 13,
            ),
            unselectedLabelStyle: const TextStyle(fontSize: 12),
            onTap: (value) {
              controller.getIndex(index: value);
              controller.changePageView(index: value);
            },
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/Icon/bottomBarIcon/bottom_1.png",
                  height: Get.width / 22,
                  color: controller.bottomNavigationIndex.value == 0
                      ? Colors.white
                      : Colors.white54,
                ),
                label: "About",
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/Icon/bottomBarIcon/bottom_2.png",
                  height: Get.width / 22,
                  color: controller.bottomNavigationIndex.value == 1
                      ? Colors.white
                      : Colors.white54,
                ),
                label: "Download",
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/Icon/bottomBarIcon/bottom_3.png",
                  height: Get.width / 22,
                  color: controller.bottomNavigationIndex.value == 2
                      ? Colors.white
                      : Colors.white54,
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/Icon/bottomBarIcon/bottom_4.png",
                  height: Get.width / 22,
                  color: controller.bottomNavigationIndex.value == 3
                      ? Colors.white
                      : Colors.white54,
                ),
                label: "Profile",
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/Icon/bottomBarIcon/bottom_5.png",
                  height: Get.width / 22,
                  color: controller.bottomNavigationIndex.value == 4
                      ? Colors.white
                      : Colors.white54,
                ),
                label: "Setting",
              ),
            ],
          ),
        );
      }),
    );
  }
}
