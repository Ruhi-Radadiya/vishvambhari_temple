import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class NumberVerification extends StatefulWidget {
  const NumberVerification({super.key});

  @override
  State<NumberVerification> createState() => _NumberVerificationState();
}

class _NumberVerificationState extends State<NumberVerification> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xFF061C36),
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

        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: Get.width / 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: Get.width / 8),
              Row(
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

              SizedBox(height: Get.width / 10),

              Text(
                "Verify Number with OTP",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: Get.width / 35),
              const Text(
                "We‘ve sent 6 code to +91 1234****** ",
                style: TextStyle(color: Colors.white70, fontSize: 14),
              ),
              SizedBox(height: h * 0.03),
              PinCodeTextField(
                appContext: context,
                length: 6,
                onChanged: (value) {},
                keyboardType: TextInputType.number,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(10),
                  fieldHeight: Get.width / 7.5,
                  fieldWidth: Get.width / 7.5,
                  activeFillColor: Color(0xff071a31),
                  inactiveFillColor: Color(0xff071a31),
                  selectedFillColor: Color(0xff071a31),
                  activeColor: Color(0xff536674),
                  inactiveColor: Color(0xff536674),
                  selectedColor: Color(0xff536674),
                  inactiveBorderWidth: 0.5,
                  activeBorderWidth: 1,
                ),
                textStyle: const TextStyle(color: Colors.white, fontSize: 18),
                enableActiveFill: true,
              ),
              SizedBox(height: Get.width / 40),
              Row(
                children: [
                  const Text(
                    "Verifying Your OTP...",
                    style: TextStyle(color: Colors.white70),
                  ),

                ],
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
                  onPressed: () {},
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
                      "By Entering your number you agree to our ",
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
                  ],
                ),
              ),
              SizedBox(height: Get.width / 13),
            ],
          ),
        ),
      ),
    );
  }
}
