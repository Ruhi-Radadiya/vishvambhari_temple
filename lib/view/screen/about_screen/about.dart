import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/routes.dart';
import '../../components/drawer.dart';
import '../../components/header.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

class _AboutState extends State<About> with TickerProviderStateMixin {
  final List<String> gridImages = [
    "assets/images/about_images/shree_mahapatra_image.png",
    "assets/images/about_images/mvty_dham_image.png",
  ];
  final List<String> gridText = ["Shree Mahapatra", "MVTY Dham"];

  void _handleDrawerChanged(bool isOpened) {
    if (isOpened) {
      _controller.forward();
    } else {
      _controller.reverse();
    }
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 250),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        key: _scaffoldKey,
        backgroundColor: const Color(0xff020C15),
        drawer: const CustomDrawer(),
        drawerScrimColor: Colors.transparent,
        onDrawerChanged: _handleDrawerChanged,
        body: Stack(
          children: [
            Column(
              children: [
                Header(),
                Expanded(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(45),
                      topRight: Radius.circular(45),
                    ),
                    child: Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xff071e30), Color(0xff000617)],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: w * 0.03),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              SizedBox(height: h * 0.015),
                              // Featured Image
                              GestureDetector(
                                onTap: () {
                                  Get.toNamed(Routes.maaVishvambhariDetailPage);
                                },
                                child: Stack(
                                  children: [
                                    Container(
                                      height: h * 0.17,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        image: const DecorationImage(
                                          image: AssetImage(
                                            "assets/images/home_images/maa2.jpg",
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: h * 0.17,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        gradient: LinearGradient(
                                          begin: Alignment.centerLeft,
                                          end: Alignment.centerRight,
                                          colors: [
                                            Colors.black.withOpacity(0.5),
                                            Colors.transparent,
                                          ],
                                        ),
                                      ),
                                      padding: const EdgeInsets.only(
                                        top: 20.0,
                                        left: 25,
                                      ),
                                      alignment: Alignment.topLeft,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "MAA\nVISHVAMBHARI",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: w * 0.045,
                                              fontWeight: FontWeight.w900,
                                            ),
                                          ),
                                          Text(
                                            "Glimpse Of Mother Vishvambhari",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: w * 0.03,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          Text(
                                            "•••",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: w * 0.08,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: h * 0.02),
                              // Grid Section
                              GridView.builder(
                                padding: EdgeInsets.zero,
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      crossAxisSpacing: w * 0.03,
                                      mainAxisSpacing: h * 0.015,
                                      childAspectRatio: 1.1,
                                    ),
                                itemCount: gridImages.length,
                                itemBuilder: (context, index) {
                                  return GestureDetector(
                                    onTap: () {
                                      if (index == 0) {
                                        Get.toNamed(
                                          Routes.shreeMahapatraDetailPage,
                                        );
                                      } else {
                                        Get.toNamed(Routes.mvtyDhamDetailPage);
                                      }
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(16),
                                        image: DecorationImage(
                                          image: AssetImage(gridImages[index]),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      child: Stack(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                              gradient: LinearGradient(
                                                begin: Alignment.bottomCenter,
                                                end: Alignment.topCenter,
                                                colors: [
                                                  Colors.black.withOpacity(0.6),
                                                  Colors.transparent,
                                                ],
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Padding(
                                              padding: const EdgeInsets.all(
                                                8.0,
                                              ),
                                              child: Text(
                                                gridText[index],
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 13,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                              SizedBox(height: h * 0.02),
                              // Spiritual Insights
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "SPIRITUAL INSIGHTS",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: w * 0.035,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(height: h * 0.02),
                              Row(
                                children: [
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: () {
                                        Get.toNamed(Routes.objectiveDetailPage);
                                      },
                                      child: Container(
                                        height: h * 0.07,
                                        decoration: BoxDecoration(
                                          color: const Color(0xff0a2538),
                                          borderRadius: BorderRadius.circular(
                                            w * 0.04,
                                          ),
                                        ),
                                        alignment: Alignment.center,
                                        child: Text(
                                          "OBJECTIVE",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: w * 0.035,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: w * 0.04),
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: () {
                                        Get.toNamed(Routes.vedicVirtues);
                                      },
                                      child: Container(
                                        height: h * 0.07,
                                        decoration: BoxDecoration(
                                          color: const Color(0xff0a2538),
                                          borderRadius: BorderRadius.circular(
                                            w * 0.04,
                                          ),
                                        ),
                                        alignment: Alignment.center,
                                        child: Text(
                                          "VEDIC VIRTUES",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: w * 0.035,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: h * 0.02),
                              GestureDetector(
                                onTap: () {
                                  Get.toNamed(Routes.darshanTimeAndRules);
                                },
                                child: Container(
                                  height: h * 0.07,
                                  decoration: BoxDecoration(
                                    color: const Color(0xff0a2538),
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    "DARSHAN TIME & RULES",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: w * 0.035,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: h * 0.02),
                              // Contact Information
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "CONTACT INFORMATION",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: w * 0.035,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(height: h * 0.02),
                              Container(
                                margin: EdgeInsets.all(w * 0.02),
                                decoration: BoxDecoration(
                                  color: const Color(0xFF102B40),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: const BorderRadius.vertical(
                                        top: Radius.circular(16),
                                      ),
                                      child: Image.asset(
                                        "assets/images/about_images/location_image.png",
                                        width: double.infinity,
                                        height: h * 0.22,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(w * 0.03),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Maa Vishvambhari TirthYatra Dham - Rabda",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: w * 0.035,
                                            ),
                                          ),
                                          SizedBox(height: h * 0.01),
                                          Row(
                                            children: [
                                              Image.asset(
                                                "assets/Icon/about/map_1.png",
                                                height: Get.width / 32,
                                              ),

                                              SizedBox(width: w * 0.02),
                                              Expanded(
                                                child: Text(
                                                  "Maa Vishvambhari TirthYatra Dham,\nAt Rabda, Gujarat 396055",
                                                  style: TextStyle(
                                                    color: Colors.white
                                                        .withOpacity(0.8),
                                                    fontSize: w * 0.03,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: h * 0.01),
                                          Row(
                                            children: [
                                              Image.asset(
                                                "assets/Icon/about/map_3.png",
                                                height: Get.width / 32,
                                              ),

                                              SizedBox(width: w * 0.02),
                                              Text(
                                                "+91 72030 25755",
                                                style: TextStyle(
                                                  color: Colors.white
                                                      .withOpacity(0.8),
                                                  fontSize: w * 0.03,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: h * 0.01),
                                          Row(
                                            children: [
                                              Image.asset(
                                                "assets/Icon/about/map_2.png",
                                                height: Get.width / 32,
                                              ),

                                              SizedBox(width: w * 0.02),
                                              Text(
                                                "maavishvambhari@gmail.com",
                                                style: TextStyle(
                                                  color: Colors.white
                                                      .withOpacity(0.8),
                                                  fontSize: w * 0.03,
                                                ),
                                              ),
                                              const Spacer(),
                                              Container(
                                                padding: EdgeInsets.all(
                                                  Get.width / 40,
                                                ),
                                                height: Get.width / 12,
                                                width: Get.width / 12,
                                                decoration: BoxDecoration(
                                                  color: Color(0xff0A2538),
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  border: Border.all(
                                                    color: Colors.white38,
                                                  ),
                                                ),
                                                child: Image.asset(
                                                  "assets/Icon/Drawer/drawer_4.png",
                                                  width: Get.width / 44,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: h * 0.03),
                              // Social Media
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "CONNECT ON SOCIAL MEDIA",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: w * 0.035,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(height: h * 0.02),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: w * 0.02,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    for (var img in [
                                      "assets/images/about_images/Whatsapp.png",
                                      "assets/images/about_images/facebook.png",
                                      "assets/images/about_images/Instagram.png",
                                      "assets/images/about_images/Twitter_1.png",
                                      "assets/images/about_images/Youtube.png",
                                    ])
                                      Container(
                                        padding: EdgeInsets.all(Get.width / 45),
                                        height: h * 0.07,
                                        width: h * 0.08,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                            image: AssetImage(img),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                              SizedBox(height: h * 0.04),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                return _controller.value > 0
                    ? GestureDetector(
                        onTap: () => _scaffoldKey.currentState?.closeDrawer(),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(
                            sigmaX: 8.0 * _controller.value,
                            sigmaY: 8.0 * _controller.value,
                          ),
                          child: Container(
                            color: Colors.black.withOpacity(
                              0.2 * _controller.value,
                            ),
                          ),
                        ),
                      )
                    : const SizedBox.shrink();
              },
            ),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// import '../../../routes/routes.dart';
// import '../../components/drawer.dart';
// import '../../components/header.dart';
//
// class About extends StatefulWidget {
//   const About({super.key});
//
//   @override
//   State<About> createState() => _AboutState();
// }
//
// final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
//
// class _AboutState extends State<About> {
//   final List<String> gridImages = [
//     "assets/images/about_images/shree_mahapatra_image.png",
//     "assets/images/about_images/mvty_dham_image.png",
//   ];
//   final List<String> gridText = ["Shree Mahapatra", "MVTY Dham"];
//
//   @override
//   Widget build(BuildContext context) {
//     final h = MediaQuery.of(context).size.height;
//     final w = MediaQuery.of(context).size.width;
//     return GestureDetector(
//       onTap: () {
//         FocusScope.of(context).unfocus();
//       },
//       child: Scaffold(
//         key: _scaffoldKey,
//         resizeToAvoidBottomInset: true,
//         backgroundColor: const Color(0xff020C15),
//         drawer: const CustomDrawer(),
//         body: SingleChildScrollView(
//           child: Column(
//             children: [
//               Header(),
//               Container(
//                 height: h * 0.7359,
//                 decoration: const BoxDecoration(
//                   gradient: LinearGradient(
//                     colors: [Color(0xff071e30), Color(0xff000617)],
//                     begin: Alignment.topCenter,
//                     end: Alignment.bottomCenter,
//                   ),
//                   borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(45),
//                     topRight: Radius.circular(45),
//                   ),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 12),
//                   child: SingleChildScrollView(
//                     child: Column(
//                       children: [
//                         SizedBox(height: 13),
//                         Padding(
//                           padding: const EdgeInsets.symmetric(vertical: 8),
//                           child: Container(
//                             height: h * 0.17,
//                             margin: const EdgeInsets.symmetric(horizontal: 5),
//                             child: GestureDetector(
//                               onTap: () {
//                                 Get.toNamed(Routes.maaVishvambhariDetailPage);
//                               },
//                               child: Stack(
//                                 children: [
//                                   Container(
//                                     decoration: BoxDecoration(
//                                       borderRadius: const BorderRadius.all(
//                                         Radius.circular(30),
//                                       ),
//                                       image: const DecorationImage(
//                                         image: AssetImage(
//                                           "assets/images/home_images/maa2.jpg",
//                                         ),
//                                         fit: BoxFit.cover,
//                                       ),
//                                     ),
//                                   ),
//                                   Container(
//                                     decoration: BoxDecoration(
//                                       borderRadius: const BorderRadius.all(
//                                         Radius.circular(30),
//                                       ),
//                                       gradient: LinearGradient(
//                                         begin: Alignment.centerLeft,
//                                         end: Alignment.centerRight,
//                                         colors: [
//                                           Colors.black.withValues(alpha: 0.5),
//                                           Colors.transparent,
//                                         ],
//                                       ),
//                                     ),
//                                     alignment: Alignment.topLeft,
//                                     child: Padding(
//                                       padding: const EdgeInsets.only(
//                                         top: 20.0,
//                                         left: 25,
//                                       ),
//                                       child: Column(
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.start,
//                                         children: [
//                                           Text(
//                                             "MAA\nVISHVAMBHARI",
//                                             style: TextStyle(
//                                               color: Colors.white,
//                                               fontSize: 17,
//                                               fontWeight: FontWeight.w900,
//                                             ),
//                                           ),
//                                           Text(
//                                             "Glimpse Of Mother\nVishvambhari",
//                                             style: TextStyle(
//                                               color: Colors.white,
//                                               fontSize: 10,
//                                               fontWeight: FontWeight.w400,
//                                             ),
//                                           ),
//                                           Text(
//                                             "•••",
//                                             style: TextStyle(
//                                               color: Colors.white,
//                                               fontSize: 29,
//                                               fontWeight: FontWeight.w400,
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ),
//                         SizedBox(height: 13),
//                         GridView.builder(
//                           padding: const EdgeInsets.symmetric(vertical: 1),
//                           physics: const NeverScrollableScrollPhysics(),
//                           shrinkWrap: true,
//                           gridDelegate:
//                               const SliverGridDelegateWithFixedCrossAxisCount(
//                                 crossAxisCount: 2,
//                                 crossAxisSpacing: 13,
//                                 mainAxisSpacing: 8,
//                                 childAspectRatio: 1.1,
//                               ),
//                           itemCount: gridImages.length,
//                           itemBuilder: (context, index) {
//                             return GestureDetector(
//                               onTap: () {
//                                 if (index == 0) {
//                                   Get.toNamed(Routes.shreeMahapatraDetailPage);
//                                 } else {
//                                   Get.toNamed(Routes.mvtyDhamDetailPage);
//                                 }
//                               },
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(16),
//                                   image: DecorationImage(
//                                     image: AssetImage(gridImages[index]),
//                                     fit: BoxFit.cover,
//                                   ),
//                                 ),
//                                 child: Stack(
//                                   children: [
//                                     Container(
//                                       decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.circular(16),
//                                         gradient: LinearGradient(
//                                           begin: Alignment.bottomCenter,
//                                           end: Alignment.topCenter,
//                                           colors: [
//                                             Colors.black.withValues(alpha: 0.6),
//                                             Colors.transparent,
//                                           ],
//                                         ),
//                                       ),
//                                     ),
//                                     Align(
//                                       alignment: Alignment.bottomCenter,
//                                       child: Padding(
//                                         padding: const EdgeInsets.all(8.0),
//                                         child: Text(
//                                           gridText[index],
//                                           style: const TextStyle(
//                                             color: Colors.white,
//                                             fontWeight: FontWeight.w700,
//                                             fontSize: 13,
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             );
//                           },
//                         ),
//                         SizedBox(height: h * 0.02),
//                         Align(
//                           alignment: Alignment.centerLeft,
//                           child: const Padding(
//                             padding: EdgeInsets.only(left: 12.0),
//                             child: Text(
//                               "SPIRITUAL INSIGHTS",
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 14,
//                                 color: Colors.white,
//                               ),
//                             ),
//                           ),
//                         ),
//                         SizedBox(height: h * 0.02),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Expanded(
//                               child: GestureDetector(
//                                 onTap: () {
//                                   Get.toNamed(Routes.objectiveDetailPage);
//                                 },
//                                 child: Container(
//                                   height: h * 0.07,
//                                   decoration: BoxDecoration(
//                                     color: const Color(0xff0a2538),
//                                     borderRadius: BorderRadius.circular(
//                                       w * 0.04,
//                                     ),
//                                   ),
//                                   alignment: Alignment.center,
//                                   child: Text(
//                                     "OBJECTIVE",
//                                     style: TextStyle(
//                                       fontWeight: FontWeight.w700,
//                                       fontSize: w * 0.035,
//                                       color: Colors.white,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             SizedBox(width: w * 0.04),
//                             Expanded(
//                               child: GestureDetector(
//                                 onTap: () {
//                                   Get.toNamed(Routes.vedicVirtues);
//                                 },
//                                 child: Container(
//                                   height: h * 0.07,
//                                   decoration: BoxDecoration(
//                                     color: const Color(0xff0a2538),
//                                     borderRadius: BorderRadius.circular(
//                                       w * 0.04,
//                                     ),
//                                   ),
//                                   alignment: Alignment.center,
//                                   child: Text(
//                                     "VEDIC VIRTUES",
//                                     style: TextStyle(
//                                       fontWeight: FontWeight.w700,
//                                       fontSize: w * 0.035,
//                                       color: Colors.white,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                         SizedBox(height: h * 0.02),
//                         GestureDetector(
//                           onTap: () {
//                             Get.toNamed(Routes.darshanTimeAndRules);
//                           },
//                           child: Container(
//                             height: h * 0.07,
//                             decoration: BoxDecoration(
//                               color: Color(0xff0a2538),
//                               borderRadius: BorderRadius.circular(16),
//                             ),
//                             alignment: Alignment.center,
//                             child: Text(
//                               "DARSHAN TIME & RULES",
//                               style: TextStyle(
//                                 fontWeight: FontWeight.w700,
//                                 fontSize: 14,
//                                 color: Colors.white,
//                               ),
//                             ),
//                           ),
//                         ),
//                         // SizedBox(height: h * 0.02),
//                         // GestureDetector(
//                         //   onTap: () {
//                         //     Get.toNamed(Routes.donateDetailScreen);
//                         //   },
//                         //   child: Container(
//                         //     height: h * 0.07,
//                         //     decoration: BoxDecoration(
//                         //       color: Color(0xff0a2538),
//                         //       borderRadius: BorderRadius.circular(16),
//                         //     ),
//                         //     alignment: Alignment.center,
//                         //     child: Text(
//                         //       "DONATE",
//                         //       style: TextStyle(
//                         //         fontWeight: FontWeight.w700,
//                         //         fontSize: 14,
//                         //         color: Colors.white,
//                         //       ),
//                         //     ),
//                         //   ),
//                         // ),
//                         SizedBox(height: h * 0.02),
//                         Align(
//                           alignment: Alignment.centerLeft,
//                           child: const Padding(
//                             padding: EdgeInsets.only(left: 12.0),
//                             child: Text(
//                               "CONTACT INFORMATION",
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 14,
//                                 color: Colors.white,
//                               ),
//                             ),
//                           ),
//                         ),
//                         SizedBox(height: h * 0.02),
//                         Container(
//                           margin: const EdgeInsets.all(10),
//                           decoration: BoxDecoration(
//                             color: const Color(0xFF102B40),
//                             borderRadius: BorderRadius.circular(16),
//                           ),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               ClipRRect(
//                                 borderRadius: const BorderRadius.vertical(
//                                   top: Radius.circular(16),
//                                 ),
//                                 child: Image.asset(
//                                   "assets/images/about_images/location_image.png",
//                                   height: 180,
//                                   width: double.infinity,
//                                   fit: BoxFit.cover,
//                                 ),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.all(13.0),
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     const Text(
//                                       "Maa Vishvambhari TirthYatra Dham - Rabda",
//                                       style: TextStyle(
//                                         color: Colors.white,
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 14,
//                                       ),
//                                     ),
//                                     const SizedBox(height: 7),
//                                     Row(
//                                       children: [
//                                         const Icon(
//                                           Icons.location_on,
//                                           color: Colors.white,
//                                           size: 18,
//                                         ),
//                                         const SizedBox(width: 8),
//                                         Expanded(
//                                           child: Text(
//                                             "Maa Vishvambhari TirthYatra Dham,\nAt Rabda, Gujarat 396055",
//                                             style: TextStyle(
//                                               color: Colors.white.withValues(
//                                                 alpha: 0.8,
//                                               ),
//                                               fontSize: 12,
//                                             ),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                     const SizedBox(height: 7),
//                                     Row(
//                                       children: [
//                                         const Icon(
//                                           Icons.phone,
//                                           color: Colors.white,
//                                           size: 18,
//                                         ),
//                                         const SizedBox(width: 8),
//                                         Text(
//                                           "+91 72030 25755",
//                                           style: TextStyle(
//                                             color: Colors.white.withValues(
//                                               alpha: 0.8,
//                                             ),
//                                             fontSize: 12,
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                     const SizedBox(height: 7),
//                                     Row(
//                                       children: [
//                                         const Icon(
//                                           Icons.email,
//                                           color: Colors.white,
//                                           size: 18,
//                                         ),
//                                         const SizedBox(width: 8),
//                                         Text(
//                                           "maavishvambhari@gmail.com",
//                                           style: TextStyle(
//                                             color: Colors.white.withValues(
//                                               alpha: 0.8,
//                                             ),
//                                             fontSize: 12,
//                                           ),
//                                         ),
//                                         const Spacer(),
//                                         Container(
//                                           padding: const EdgeInsets.all(6),
//                                           decoration: BoxDecoration(
//                                             color: Colors.white.withValues(
//                                               alpha: 0.2,
//                                             ),
//                                             shape: BoxShape.circle,
//                                           ),
//                                           child: const Icon(
//                                             Icons.arrow_forward_ios,
//                                             color: Colors.white,
//                                             size: 14,
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         SizedBox(height: h * 0.02),
//                         Align(
//                           alignment: Alignment.centerLeft,
//                           child: const Padding(
//                             padding: EdgeInsets.only(left: 12.0),
//                             child: Text(
//                               "CONNECT ON SOCIAL MEDIA",
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 14,
//                                 color: Colors.white,
//                               ),
//                             ),
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.symmetric(horizontal: 8.0),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Container(
//                                 height: h * 0.16,
//                                 width: w * 0.16,
//                                 decoration: BoxDecoration(
//                                   shape: BoxShape.circle,
//                                   image: const DecorationImage(
//                                     image: AssetImage(
//                                       "assets/images/about_images/Whatsapp.png",
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               Container(
//                                 height: h * 0.16,
//                                 width: w * 0.16,
//                                 decoration: BoxDecoration(
//                                   shape: BoxShape.circle,
//                                   image: const DecorationImage(
//                                     image: AssetImage(
//                                       "assets/images/about_images/facebook.png",
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               Container(
//                                 height: h * 0.16,
//                                 width: w * 0.16,
//                                 decoration: BoxDecoration(
//                                   shape: BoxShape.circle,
//                                   image: const DecorationImage(
//                                     image: AssetImage(
//                                       "assets/images/about_images/Instagram.png",
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               Container(
//                                 height: h * 0.16,
//                                 width: w * 0.16,
//                                 decoration: BoxDecoration(
//                                   shape: BoxShape.circle,
//                                   image: const DecorationImage(
//                                     image: AssetImage(
//                                       "assets/images/about_images/Twitter_1.png",
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               Container(
//                                 height: h * 0.16,
//                                 width: w * 0.16,
//                                 decoration: BoxDecoration(
//                                   shape: BoxShape.circle,
//                                   image: const DecorationImage(
//                                     image: AssetImage(
//                                       "assets/images/about_images/Youtube.png",
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
