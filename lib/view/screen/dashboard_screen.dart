import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vishvambhari_temple/component/about.dart';
import 'package:vishvambhari_temple/component/download.dart';
import 'package:vishvambhari_temple/component/profile.dart';
import 'package:vishvambhari_temple/component/setting.dart';
import '../../component/home.dart';
import '../../controller/bottom_navigation_bar.dart';

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
        return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color(0xff0c2e49),
          currentIndex: controller.bottomNavigationIndex.value,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white.withOpacity(0.6),
          selectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 13,
          ),
          unselectedLabelStyle: const TextStyle(fontSize: 12),
          onTap: (value) {
            controller.getIndex(index: value);
            controller.changePageView(index: value);
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.book_outlined),
              label: "About",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.download_outlined),
              label: "Download",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: "Profile",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined),
              label: "Setting",
            ),
          ],
        );
      }),
    );
  }
}
