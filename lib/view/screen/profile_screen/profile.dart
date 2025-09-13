import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../routes/routes.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xff020C15),
      body: Column(
        children: [
          SizedBox(height: 80),
          Container(
            height: Get.height / 1.22,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff081F32), Color(0xff000516)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.1, 0.9],
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(45),
                topRight: Radius.circular(45),
              ),
            ),
            padding: EdgeInsets.only(top: Get.width / 30),
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CircleAvatar(
                        radius: Get.width / 5.5,
                        backgroundImage: AssetImage(
                          "assets/images/profile_images/profile.png",
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        padding: EdgeInsets.all(Get.width / 50),
                        child: Image.asset(
                          "assets/Icon/profileIcon/pro_1.png",
                          height: Get.width / 26,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: Get.width / 15),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 16,
                      horizontal: 20,
                    ),
                    margin: const EdgeInsets.only(bottom: 20),
                    decoration: BoxDecoration(
                      color: const Color(0xff071D33),
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.white24),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Dipesh Vasoya",
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "dipeshvasoya01@gmail.com",
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          padding: const EdgeInsets.all(6),
                          child: Image.asset(
                            "assets/Icon/profileIcon/pro_1.png",
                            height: Get.width / 32,
                          ),
                        ),
                      ],
                    ),
                  ),
                  buildProfileTile(
                    image: "assets/Icon/profileIcon/pro_2.png",
                    title: "+91 7358443068",
                    onTap: () {},
                  ),
                  buildProfileTile(
                    image: "assets/Icon/profileIcon/pro_3.png",
                    title: "Change Mobile Number",
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 16,
                    ),
                    onTap: () {
                      Get.toNamed(Routes.changeMobileNumber);
                    },
                  ),
                  buildProfileTile(
                    image: "assets/Icon/profileIcon/pro_4.png",
                    title: "Logout",
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 16,
                    ),
                    onTap: () {
                      showLogoutDialog(context);
                    },
                  ),

                  const SizedBox(height: 30),
                  GestureDetector(
                    onTap: () {
                      showDeleteAccountDialog(context);
                    },
                    child: const Text(
                      "Delete Account",
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildProfileTile({
    required String image,
    required String title,
    Widget? trailing,
    VoidCallback? onTap,
  }) {
    return Container(
      margin: EdgeInsets.only(bottom: Get.width / 18),
      padding: EdgeInsets.symmetric(
        horizontal: Get.width / 20,
        vertical: Get.width / 24,
      ),
      decoration: BoxDecoration(
        color: const Color(0xff05172C),
        borderRadius: BorderRadius.circular(40),

        border: Border.all(color: Color(0xff536674)),
      ),
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            CircleAvatar(
              radius: 18,
              backgroundColor: Colors.white,
              child: Image.asset(image, height: Get.width / 22),
            ),

            const SizedBox(width: 16),
            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            if (trailing != null) trailing,
          ],
        ),
      ),
    );
  }

  void showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: AlertDialog(
          backgroundColor: const Color(0xff0A2538),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          title: Padding(
            padding: EdgeInsets.all(Get.width / 20),
            child: Image.asset(
              "assets/Icon/profileIcon/Delete Icon.png",
              height: Get.width / 3,
            ),
          ),

          content: Text(
            "are you sure want to\nLogout ?",
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          actionsAlignment: MainAxisAlignment.spaceEvenly,
          actions: [
            Column(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff134369),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: Get.width / 12,
                      vertical: Get.width / 30,
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Yes , Logout",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(height: Get.width / 40),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      horizontal: Get.width / 12,
                      vertical: Get.width / 30,
                    ),
                    foregroundColor: Color(0xff142E40),
                    side: BorderSide(color: Color(0xff536674), width: 0.5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "No , Please",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void showDeleteAccountDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: AlertDialog(
          backgroundColor: const Color(0xff0A2538),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          title: Padding(
            padding: EdgeInsets.all(Get.width / 20),
            child: Image.asset(
              "assets/Icon/profileIcon/Delete Icon.png",
              height: Get.width / 3,
            ),
          ),
          content: Text(
            "are you sure want to\n Delete Account ?",
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          actionsAlignment: MainAxisAlignment.spaceEvenly,
          actions: [
            Column(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff134369),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: Get.width / 12,
                      vertical: Get.width / 30,
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Yes , Delete",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(height: Get.width / 40),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      horizontal: Get.width / 12,
                      vertical: Get.width / 30,
                    ),
                    foregroundColor: Color(0xff142E40),
                    side: BorderSide(color: Color(0xff536674), width: 0.5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "No , Please",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
