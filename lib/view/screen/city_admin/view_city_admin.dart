import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../routes/routes.dart';
import '../../components/header.dart';

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
              Header(),
              Container(
                padding: EdgeInsets.symmetric(vertical: Get.width / 30),
                height: Get.height / 1.15,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    stops: [0.1, 0.9],
                    colors: [Color(0xff081E31), Color(0xff010617)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(45),
                    topRight: Radius.circular(45),
                  ),
                ),
                child: SingleChildScrollView(
                  padding: EdgeInsets.only(
                    bottom: Get.width / 30,
                    left: Get.width / 30,
                    right: Get.width / 30,
                  ),

                  child: Column(
                    children: [
                      ElevatedButton(
                        style: ButtonStyle(
                          padding: WidgetStatePropertyAll(
                            EdgeInsets.symmetric(
                              horizontal: Get.width / 16,
                              vertical: Get.width / 22,
                            ),
                          ),
                          backgroundColor: WidgetStatePropertyAll(
                            Color(0xffFF8127),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Add City Admin",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      SizedBox(height: h * 0.02),
                      const Center(
                        child: Text(
                          "Showing 2 of 2 parivar(s)",
                          style: TextStyle(
                            color: Color(0xffFF8127),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
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
                        h: h,
                        w: w,
                      ),
                      SizedBox(height: h * 0.02),
                      _buildParivarCard(
                        name: "Patrick K. Chamberlain",
                        code: "parivar0006",
                        phone: "+91 98378 45198",
                        state: "Gujarat",
                        h: h,
                        w: w,
                      ),
                      SizedBox(height: h * 0.02),
                      _buildParivarCard(
                        name: "Sherika J. Torres",
                        code: "parivar0010",
                        phone: "+91 68557 78491",
                        state: "Rajasthan",
                        h: h,
                        w: w,
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
    required double w,
    required double h,
  }) {
    return Card(
      elevation: 3,

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        padding: EdgeInsets.all(Get.width / 24),
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
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Row(
                  children: [
                    _smallIconButton(
                      "assets/images/men.png",
                      const Color(0xFF2B69C8),
                      w,
                      h,
                    ),
                    SizedBox(width: w * 0.02),
                    _smallIconButton(
                      "assets/images/women.png",
                      const Color(0xFF2B69C8),
                      w,
                      h,
                    ),
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
              spacing: Get.width / 30,
              runSpacing: Get.width / 30,
              children: [
                _infoTag(phone, const Color(0xff3F86C4)),
                _infoTag(state, Color(0xff57B157)),
              ],
            ),

            SizedBox(height: Get.width / 30),

            // Action Buttons
            Wrap(
              spacing: w * 0.03,
              children: [
                _actionBoxButton(
                  "assets/Icon/Card/card_2.png",
                  Color(0xff01122A),
                  Color(0xff4188C6),
                  Color(0xff4188C6),
                  w,
                  h,
                ),
                _actionBoxButton(
                  "assets/Icon/Card/card_3.png",
                  Color(0xff01122A),
                  Color(0xffD7504C),
                  Color(0xffD7504C),
                  w,
                  h,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // 🔹 Info tag widget
  Widget _infoTag(String text, Color color) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: Get.width / 15,
        vertical: Get.width / 45,
      ),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        text,
        style: const TextStyle(color: Colors.white, fontSize: 13),
      ),
    );
  }

  Widget _smallIconButton(String image, Color iconColor, double w, double h) {
    return Container(
      width: w * 0.055,
      height: w * 0.055,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Image.asset(image),
    );
  }

  Widget _actionBoxButton(
    String icon,
    Color bg,
    Color iconColor,
    Color borderColor,
    double w,
    double h,
  ) {
    return Container(
      width: w * 0.12,
      height: h * 0.045,
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: borderColor),
      ),
      padding: EdgeInsets.all(Get.width / 46),
      child: Image.asset(icon, height: Get.width / 60, color: iconColor),
    );
  }
}
