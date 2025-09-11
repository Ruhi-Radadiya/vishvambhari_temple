import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 80),
            Container(
              height: h * 0.9,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xff071e30), Color(0xff000617)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(45),
                  topRight: Radius.circular(45),
                ),
              ),
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        const CircleAvatar(
                          radius: 55,
                          backgroundImage: AssetImage(
                            "assets/images/profile_images/profile.png",
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
                    const SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 16,
                        horizontal: 20,
                      ),
                      margin: const EdgeInsets.only(bottom: 20),
                      decoration: BoxDecoration(
                        color: const Color(0xFF0E2A47),
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                          color: Colors.white24,
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Dipesh Vasoya",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
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
                            child:Image.asset(
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
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: BoxDecoration(
        color: const Color(0xFF0E2A47),
        borderRadius: BorderRadius.circular(40),

        border: Border.all(
          color: Colors.white24,
        ),
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
          backgroundColor: const Color(0xff071e30),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          title: Image.asset(
            "assets/Icon/profileIcon/Logout Icon.png",
            height: Get.width / 4,
          ),
          content: const Text(
            "are you sure want to Logout ?",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),
          ),
          actionsAlignment: MainAxisAlignment.spaceEvenly,
          actions: [
            Column(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff134369),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
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
                    foregroundColor: Color(0xff142e40),
                    side: const BorderSide(color: Colors.white),
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
          backgroundColor: const Color(0xff071e30),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          title: const Icon(Icons.phone_android, size: 50, color: Colors.white),
          content: const Text(
            "are you sure want to Delete Account ?",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),
          ),
          actionsAlignment: MainAxisAlignment.spaceEvenly,
          actions: [
            SizedBox(
              width: 160, // smaller width
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff134369),
                  shape: const StadiumBorder(), // pill shape
                  padding: const EdgeInsets.symmetric(vertical: 14),
                ),
                onPressed: () {
                  // delete logic
                },
                child: const Text(
                  "Yes, Delete",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: 160,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(
                    color: Color(0xff536674),
                    width: 0.5,
                  ),
                  shape: const StadiumBorder(), // pill shape
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  backgroundColor: Color(0xff142E40),
                ),
                onPressed: () => Navigator.pop(context),
                child: const Text(
                  "No, Please",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
