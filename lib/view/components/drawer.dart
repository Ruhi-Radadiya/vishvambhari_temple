import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/routes.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  bool showParivarSubMenu = false;
  bool showYagnSubMenu = false;
  bool showCityAdminSubMenu = false;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xff071e30),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff071e30), Color(0xff000617)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Image.asset(
                "assets/images/HD_Logo_Maa-Copy_1.png",
                height: 70,
                width: 150,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 28,
                  backgroundImage: AssetImage(
                    "assets/images/profile_images/profile.png",
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Dipesh Vasoya",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Super_admin",
                        style: TextStyle(color: Colors.white70, fontSize: 13),
                      ),
                    ],
                  ),
                ),
                const Icon(Icons.settings, color: Colors.white, size: 22),
              ],
            ),
          ),
          Divider(),
          _drawerTile(Icons.home, "Dashboard"),
          Divider(),
          _drawerTile(Icons.person, "Shree Mahapatra", trailing: true),
          Divider(),
          Theme(
            data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
            child: ExpansionTile(
              collapsedIconColor: Colors.white,
              iconColor: Colors.orange,
              leading: const Icon(Icons.groups, color: Colors.white),
              title: const Text(
                "Maa Parivar",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              children: [
                ExpansionTile(
                  tilePadding: const EdgeInsets.only(left: 40, right: 16),
                  collapsedIconColor: Colors.white,
                  iconColor: Colors.orange,
                  leading: const Icon(
                    Icons.group,
                    color: Colors.orange,
                    size: 22,
                  ),
                  title: const Text(
                    "Parivar",
                    style: TextStyle(color: Colors.orange),
                  ),
                  children: [
                    ListTile(
                      title: const Text(
                        "Add Parivar",
                        style: TextStyle(color: Colors.white70),
                      ),
                      onTap: () {
                        Get.toNamed(Routes.addParivar);
                      },
                    ),
                    ListTile(
                      title: Text(
                        "View All Parivar",
                        style: TextStyle(color: Colors.white70),
                      ),
                      onTap: () {
                        Get.toNamed(Routes.viewParivar);
                      },
                    ),
                  ],
                ),
                ExpansionTile(
                  tilePadding: const EdgeInsets.only(left: 40, right: 16),
                  collapsedIconColor: Colors.white,
                  iconColor: Colors.orange,
                  leading: const Icon(
                    Icons.local_fire_department,
                    color: Colors.orange,
                    size: 22,
                  ),
                  title: const Text(
                    "Yagn",
                    style: TextStyle(color: Colors.orange),
                  ),
                  children: [
                    ListTile(
                      title: Text(
                        "Public Form",
                        style: TextStyle(color: Colors.white70),
                      ),
                      onTap: () {
                        Get.toNamed(Routes.publicForm);
                      },
                    ),
                    ListTile(
                      title: Text(
                        "View Yagn",
                        style: TextStyle(color: Colors.white70),
                      ),
                      onTap: () {
                        Get.toNamed(Routes.viewYagn);
                      },
                    ),
                    ListTile(
                      title: Text(
                        "City Admin Payment Sum...",
                        style: TextStyle(color: Colors.white70),
                      ),
                      onTap: () {
                        Get.toNamed(Routes.cityAdminPayment);
                      },
                    ),
                  ],
                ),
                ExpansionTile(
                  tilePadding: const EdgeInsets.only(left: 40, right: 16),
                  collapsedIconColor: Colors.white,
                  iconColor: Colors.orange,
                  leading: const Icon(
                    Icons.location_on,
                    color: Colors.orange,
                    size: 22,
                  ),
                  title: const Text(
                    "City Admin",
                    style: TextStyle(color: Colors.orange),
                  ),
                  children: [
                    ListTile(
                      title: const Text(
                        "Add City Admin",
                        style: TextStyle(color: Colors.white70),
                      ),
                      onTap: () {
                        Get.toNamed(Routes.addCityAdmin);
                      },
                    ),
                    ListTile(
                      title: Text(
                        "View All City Admin",
                        style: TextStyle(color: Colors.white70),
                      ),
                      onTap: () {
                        Get.toNamed(Routes.viewCityAdmin);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _drawerTile(IconData icon, String title, {bool trailing = false}) {
    return ListTile(
      leading: Icon(icon, color: Colors.white),
      title: Text(title, style: const TextStyle(color: Colors.white)),
      trailing: trailing
          ? const Icon(Icons.chevron_right, color: Colors.white)
          : null,
      onTap: () {},
    );
  }
}
