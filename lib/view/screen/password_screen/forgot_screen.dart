import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../routes/routes.dart';
import '../../components/textfield.dart';

class ForgotScreen extends StatefulWidget {
  const ForgotScreen({super.key});

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFF061C36),
      body: Scaffold(
        backgroundColor: Color(0xff0A2538),
        body: Container(
          height: Get.height,
          width: Get.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xff000617), Color(0xff0A2538)],
              stops: [0.3, 0.9],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: Get.width / 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: Get.width / 8),
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

                SizedBox(height: Get.width / 10),

                Text(
                  "Forgot Password",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: Get.width / 35),

                const Text(
                  "Enter your mail for Receive OTP...",
                  style: TextStyle(color: Colors.white70, fontSize: 14),
                ),
                const SizedBox(height: 30),

                CommonTextField(
                  controller: emailController,
                  hint: "Enter your email",
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                ),

                const Spacer(),
                SizedBox(
                  width: w,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff134369),
                      padding: const EdgeInsets.symmetric(vertical: 18),
                      // Increased vertical padding for button
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed:() {
                      Get.toNamed(Routes.otpScreen);
                    },
                    child: const Text(
                      "Continue",

                      style: TextStyle(
                        fontSize: 16,
                        letterSpacing: 1,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: h * 0.015),
                Center(
                  child: Column(
                    children: [
                      Text(
                        "By Entering your number you agree to our",
                        style: TextStyle(color: Colors.white70, fontSize: 12),
                      ),
                      Text(
                        "Terms & Privacy Policy",
                        style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(
                        height: Get.width / 13,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
