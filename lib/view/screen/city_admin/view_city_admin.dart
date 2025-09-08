import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/routes.dart';

class ViewCityAdmin extends StatefulWidget {
  const ViewCityAdmin({super.key});

  @override
  State<ViewCityAdmin> createState() => _ViewCityAdminState();
}

class _ViewCityAdminState extends State<ViewCityAdmin> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: const Color(0xff020C15),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // 🔹 Top row with profile, search, bell
              Padding(
                padding: const EdgeInsets.only(
                  left: 16.0,
                  right: 16.0,
                  top: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: h * 0.14,
                      width: w * 0.14,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/images/profile_images/profile.png",
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Search here...",
                            hintStyle: TextStyle(
                              color: Colors.white.withValues(alpha: 0.7),
                            ),
                            prefixIcon: const Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                            filled: true,
                            fillColor: Colors.white.withValues(alpha: 0.2),
                            contentPadding: const EdgeInsets.symmetric(
                              vertical: 0,
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
                    IconButton(
                      icon: const Icon(
                        CupertinoIcons.bell,
                        color: Colors.white,
                        size: 25,
                      ),
                      onPressed: () {
                        Get.toNamed(Routes.notificationScreen);
                      },
                    ),
                  ],
                ),
              ),
              Container(
                height: h * 0.8,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xff071e30), Color(0xff020c1d)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(45),
                    topRight: Radius.circular(45),
                  ),
                ),
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(18),
                  child: Column(
                    children: [
                      ElevatedButton(
                        style: const ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(
                            Colors.orange,
                          ),
                        ),
                        onPressed: () {},
                        child: const Padding(
                          padding: EdgeInsets.symmetric(vertical: 18),
                          child: Text(
                            "Add City Admin",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                      ),
                      SizedBox(height: h * 0.02),
                      const Center(
                        child: Text(
                          "Showing 2 of 2 parivar(s)",
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(height: h * 0.03),

                      // 🔹 Parivar Cards
                      _buildParivarCard(
                        name: "Dipesh Vasoya",
                        code: "parivar0010",
                        phone: "+91 78653 21498",
                        state: "Gujarat",
                      ),
                      SizedBox(height: h * 0.02),
                      _buildParivarCard(
                        name: "Patrick K. Chamberlain",
                        code: "parivar0006",
                        phone: "+91 98378 45198",
                        state: "Gujarat",
                      ),
                      SizedBox(height: h * 0.02),
                      _buildParivarCard(
                        name: "Sherika J. Torres",
                        code: "parivar0010",
                        phone: "+91 68557 78491",
                        state: "Rajasthan",
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // 🔹 Reusable Parivar Card
  Widget _buildParivarCard({
    required String name,
    required String code,
    required String phone,
    required String state,
  }) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xff00132A),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Name + Icons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                name,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
              Row(
                children: const [
                  Icon(Icons.man, color: Colors.blueAccent, size: 30),
                  SizedBox(width: 6),
                  Icon(Icons.woman, color: Colors.blueAccent, size: 30),
                ],
              ),
            ],
          ),
          const SizedBox(height: 2),
          Text(
            "Code : $code",
            style: const TextStyle(color: Colors.white70, fontSize: 12),
          ),
          const SizedBox(height: 10),

          // Phone + State + People
          Wrap(
            spacing: 8,
            runSpacing: 6,
            children: [
              _infoTag(phone, const Color(0xff134369)),
              _infoTag(state, Colors.green),
            ],
          ),

          const SizedBox(height: 12),

          // Action Buttons
          Row(
            children: [
              _actionButton(Icons.phone, Colors.white),
              const SizedBox(width: 10),
              _actionButton(Icons.edit, Colors.blue),
              const SizedBox(width: 10),
              _actionButton(Icons.delete, Colors.red),
            ],
          ),
        ],
      ),
    );
  }

  // 🔹 Info tag widget
  Widget _infoTag(String text, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        text,
        style: const TextStyle(color: Colors.white, fontSize: 13),
      ),
    );
  }

  // 🔹 Action Button
  Widget _actionButton(IconData icon, Color color) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: color),
      ),
      child: Icon(icon, color: color),
    );
  }
}
