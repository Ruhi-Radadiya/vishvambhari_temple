import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../routes/routes.dart';
import '../../components/textfield.dart';

class ChangeMobileNumber extends StatefulWidget {
  const ChangeMobileNumber({super.key});

  @override
  State<ChangeMobileNumber> createState() => _ChangeMobileNumberState();
}

class _ChangeMobileNumberState extends State<ChangeMobileNumber> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color(0xff020C15),
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff081F32), Color(0xff000516)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.1, 0.9],
          ),

        ),
        child: Column(
          children: [
            SizedBox(height: Get.width / 8),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Get.width / 30),
              child: Row(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding: EdgeInsets.all(Get.width / 45),
                        decoration: BoxDecoration(
                          color: Color(0xff0A2538),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Color(0xff536674)),
                        ),
                        child: Icon(
                          CupertinoIcons.back,
                          color: Colors.white,
                          size: Get.width / 18,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: Get.width / 18),
                  Text(
                    "Change Mobile number",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: w * 0.047,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(Get.width / 30),
              child: Column(
                children: [
                  SizedBox(height: Get.width / 12),
                  IntrinsicHeight(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xff092239),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        border: Border.all(color: Color(0xff536674)),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(Get.width / 30),
                        child: Column(
                          children: [
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: Get.width / 6,
                                  child: Image.asset(
                                    "assets/Icon/profileIcon/pro_3.png",
                                    height: Get.width / 6.5,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: Get.width / 14),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Mobile Number",
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(height: Get.width / 40),
                            MobileNumberField(),
                            SizedBox(height: Get.width / 14),
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xff134369),
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 18,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                                onPressed: () {
                                  Get.toNamed(Routes.numberVerification);
                                },
                                child: const Text(
                                  "Verify",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: Get.width / 30),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
