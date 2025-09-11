import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/routes.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
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


          /// Profile Section
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
                Icon(Icons.settings, color: Colors.white, size: 22),
              ],
            ),
          ),
          Divider(
            color: Color(0xff536674),
          ),


          _drawerTile("assets/Icon/Drawer/drawer_1.png", "Dashboard"),
          Divider(
            color: Color(0xff536674),
          ),

          _drawerTile(
            "assets/Icon/Drawer/drawer_2.png",
            "Shree Mahapatra",
            trailing: true,
          ),
          Divider(
            color: Color(0xff536674),
          ),

          /// Maa Parivar parent
          Theme(
            data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
            child: ExpansionTile(
              collapsedIconColor: Colors.white,
              iconColor: Colors.orange,
              leading: Image.asset(
                "assets/Icon/Drawer/drawer_3.png",
                width: Get.width / 20,
              ),
              title: const Text(
                "Maa Parivar",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              children: [
                /// Parivar child with sub items
                ExpansionTile(
                  tilePadding: const EdgeInsets.only(left: 60, right: 16),
                  collapsedIconColor: Colors.white,
                  iconColor: Colors.orange,
                  leading: Image.asset(
                    "assets/Icon/Drawer/drawer_3.png",
                    color: Colors.orange,
                    width: Get.width / 20,
                  ),
                  title: const Text(
                    "Parivar",
                    style: TextStyle(color: Colors.orange),
                  ),
                  children: [
                    ListTile(
                      contentPadding: const EdgeInsets.only(
                        left: 100,
                        right: 16,
                      ),
                      title: const Text(
                        "Add Parivar",
                        style: TextStyle(color: Colors.white70),
                      ),
                      onTap: () {
                        Get.toNamed(Routes.addParivar);
                      },
                    ),
                    ListTile(
                      contentPadding: const EdgeInsets.only(
                        left: 100,
                        right: 16,
                      ),
                      title: const Text(
                        "View All Parivar",
                        style: TextStyle(color: Colors.white70),
                      ),
                      onTap: () {
                        Get.toNamed(Routes.viewParivar);
                      },
                    ),
                  ],
                ),

                /// Yagn child
                ExpansionTile(
                  tilePadding: const EdgeInsets.only(left: 60, right: 16),
                  collapsedIconColor: Colors.white,
                  iconColor: Colors.orange,
                  leading: Image.asset(
                    "assets/Icon/Drawer/drawer_6.png",
                    color: Colors.orange,
                    width: Get.width / 20,
                  ),
                  title: const Text(
                    "Yagn",
                    style: TextStyle(color: Colors.orange),
                  ),
                  children: [
                    ListTile(
                      contentPadding: const EdgeInsets.only(
                        left: 100,
                        right: 16,
                      ),
                      title: const Text(
                        "Public Form",
                        style: TextStyle(color: Colors.white70),
                      ),
                      onTap: () {
                        Get.toNamed(Routes.publicForm);
                      },
                    ),
                    ListTile(
                      contentPadding: const EdgeInsets.only(
                        left: 100,
                        right: 16,
                      ),
                      title: const Text(
                        "View Yagn",
                        style: TextStyle(color: Colors.white70),
                      ),
                      onTap: () {
                        Get.toNamed(Routes.viewYagn);
                      },
                    ),
                    ListTile(
                      contentPadding: const EdgeInsets.only(
                        left: 100,
                        right: 16,
                      ),
                      title: const Text(
                        overflow: TextOverflow.ellipsis,
                        "City Admin Payment Sum...",
                        style: TextStyle(color: Colors.white70),
                      ),
                      onTap: () {
                        Get.toNamed(Routes.cityAdminPayment);
                      },
                    ),
                  ],
                ),

                /// City Admin child
                ExpansionTile(
                  tilePadding: const EdgeInsets.only(left: 60, right: 16),
                  collapsedIconColor: Colors.white,
                  iconColor: Colors.orange,
                  leading: Image.asset(
                    "assets/Icon/Drawer/drawer_7.png",
                    color: Colors.orange,
                    width: Get.width / 22,
                  ),
                  title: const Text(
                    "City Admin",
                    style: TextStyle(color: Colors.orange),
                  ),
                  children: [
                    ListTile(
                      contentPadding: const EdgeInsets.only(
                        left: 100,
                        right: 16,
                      ),
                      title: const Text(
                        "Add City Admin",
                        style: TextStyle(color: Colors.white70),
                      ),
                      onTap: () {
                        Get.toNamed(Routes.addCityAdmin);
                      },
                    ),
                    ListTile(
                      contentPadding: const EdgeInsets.only(
                        left: 100,
                        right: 16,
                      ),
                      title: const Text(
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

  Widget _drawerTile(String image, String title, {bool trailing = false}) {
    return ListTile(
      leading: Image(image: AssetImage(image), width: Get.width / 22),
      title: Text(title, style: const TextStyle(color: Colors.white)),
      trailing: trailing
          ? const Icon(Icons.chevron_right, color: Colors.white70, size: 18)
          : null,
      onTap: () {},
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// import '../../routes/routes.dart';
//
// class CustomDrawer extends StatefulWidget {
//   const CustomDrawer({super.key});
//
//   @override
//   State<CustomDrawer> createState() => _CustomDrawerState();
// }
//
// class _CustomDrawerState extends State<CustomDrawer> {
//   bool showParivarSubMenu = false;
//   bool showYagnSubMenu = false;
//   bool showCityAdminSubMenu = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       backgroundColor: const Color(0xff071e30),
//       child: ListView(
//         padding: EdgeInsets.zero,
//         children: [
//           DrawerHeader(
//             decoration: const BoxDecoration(
//               gradient: LinearGradient(
//                 colors: [Color(0xff071e30), Color(0xff000617)],
//                 begin: Alignment.topCenter,
//                 end: Alignment.bottomCenter,
//               ),
//             ),
//             child: Align(
//               alignment: Alignment.bottomLeft,
//               child: Image.asset(
//                 "assets/images/HD_Logo_Maa-Copy_1.png",
//                 height: 70,
//                 width: 150,
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
//             child: Row(
//               children: [
//                 const CircleAvatar(
//                   radius: 28,
//                   backgroundImage: AssetImage(
//                     "assets/images/profile_images/profile.png",
//                   ),
//                 ),
//                 const SizedBox(width: 12),
//                 Expanded(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: const [
//                       Text(
//                         "Dipesh Vasoya",
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 16,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       Text(
//                         "Super_admin",
//                         style: TextStyle(color: Colors.white70, fontSize: 13),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Image(
//                   image: AssetImage("assets/Icon/Drawer/drawer_5.png"),
//                   width: Get.width / 20,
//                 ),
//               ],
//             ),
//           ),
//           Divider(),
//           _drawerTile("assets/Icon/Drawer/drawer_1.png", "Dashboard"),
//           Divider(),
//           _drawerTile(
//             "assets/Icon/Drawer/drawer_2.png",
//             "Shree Mahapatra",
//             trailing: true,
//           ),
//           Divider(),
//           Theme(
//             data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
//             child: ExpansionTile(
//               collapsedIconColor: Colors.white,
//               iconColor: Colors.orange,
//               leading: Image(
//                 image: AssetImage("assets/Icon/Drawer/drawer_3.png"),
//                 width: Get.width / 20,
//               ),
//               title: const Text(
//                 "Maa Parivar",
//                 style: TextStyle(color: Colors.white, fontSize: 15),
//               ),
//               children: [
//                 ExpansionTile(
//                   tilePadding: const EdgeInsets.only(left: 40, right: 16),
//                   collapsedIconColor: Colors.white,
//                   iconColor: Colors.orange,
//                   leading: Image(
//                     image: AssetImage("assets/Icon/Drawer/drawer_3.png"),
//                     color: Colors.orange,
//                     width: Get.width / 20,
//                   ),
//                   title: const Text(
//                     "Parivar",
//                     style: TextStyle(color: Colors.orange),
//                   ),
//                   children: [
//                     ListTile(
//                       title: const Text(
//                         "Add Parivar",
//                         style: TextStyle(color: Colors.white70),
//                       ),
//                       onTap: () {
//                         Get.toNamed(Routes.addParivar);
//                       },
//                     ),
//                     ListTile(
//                       title: Text(
//                         "View All Parivar",
//                         style: TextStyle(color: Colors.white70),
//                       ),
//                       onTap: () {
//                         Get.toNamed(Routes.viewParivar);
//                       },
//                     ),
//                   ],
//                 ),
//                 ExpansionTile(
//                   tilePadding: const EdgeInsets.only(left: 40, right: 16),
//                   collapsedIconColor: Colors.white,
//                   iconColor: Colors.orange,
//                   leading: Image(
//                     image: AssetImage("assets/Icon/Drawer/drawer_6.png"),
//                     color: Colors.orange,
//                     width: Get.width / 20,
//                   ),
//                   title: const Text(
//                     "Yagn",
//                     style: TextStyle(color: Colors.orange),
//                   ),
//                   children: [
//                     ListTile(
//                       title: Text(
//                         "Public Form",
//                         style: TextStyle(color: Colors.white70),
//                       ),
//                       onTap: () {
//                         Get.toNamed(Routes.publicForm);
//                       },
//                     ),
//                     ListTile(
//                       title: Text(
//                         "View Yagn",
//                         style: TextStyle(color: Colors.white70),
//                       ),
//                       onTap: () {
//                         Get.toNamed(Routes.viewYagn);
//                       },
//                     ),
//                     ListTile(
//                       title: Text(
//                         "City Admin Payment Sum...",
//                         style: TextStyle(color: Colors.white70),
//                       ),
//                       onTap: () {
//                         Get.toNamed(Routes.cityAdminPayment);
//                       },
//                     ),
//                   ],
//                 ),
//                 ExpansionTile(
//                   tilePadding: const EdgeInsets.only(left: 40, right: 16),
//                   collapsedIconColor: Colors.white,
//                   iconColor: Colors.orange,
//                   leading: Image(
//                     image: AssetImage("assets/Icon/Drawer/drawer_7.png"),
//                     color: Colors.orange,
//                     width: Get.width / 24,
//                   ),
//                   title: const Text(
//                     "City Admin",
//                     style: TextStyle(color: Colors.orange),
//                   ),
//                   children: [
//                     ListTile(
//                       title: const Text(
//                         "Add City Admin",
//                         style: TextStyle(color: Colors.white70),
//                       ),
//                       onTap: () {
//                         Get.toNamed(Routes.addCityAdmin);
//                       },
//                     ),
//                     ListTile(
//                       title: Text(
//                         "View All City Admin",
//                         style: TextStyle(color: Colors.white70),
//                       ),
//                       onTap: () {
//                         Get.toNamed(Routes.viewCityAdmin);
//                       },
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _drawerTile(String image, String title, {bool trailing = false}) {
//     return ListTile(
//       leading: Image(image: AssetImage(image), width: Get.width / 22),
//       title: Text(title, style: const TextStyle(color: Colors.white)),
//       trailing: trailing
//           ? Image(
//               image: AssetImage("assets/Icon/Drawer/drawer_4.png"),
//               width: Get.width / 44,
//             )
//           : null,
//       onTap: () {},
//     );
//   }
// }
