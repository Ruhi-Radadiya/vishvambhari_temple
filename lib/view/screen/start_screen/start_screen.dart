import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/routes.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/start_page_image.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Black Gradient Overlay
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff01091a),
                  Colors.transparent, // bottom clear
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),

          // Content
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                        Color(0xff134369),
                      ),
                    ),
                    onPressed: () {
                      Get.toNamed(Routes.loginScreen);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 80,
                        vertical: 20,
                      ),
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                        Color(0xff071a31),
                      ),
                      side: WidgetStatePropertyAll(
                        BorderSide(color: Color(0xff536674), width: 0.7),
                      ),
                    ),
                    onPressed: () {
                      Get.toNamed(Routes.registrationScreen);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 74,
                        vertical: 20,
                      ),
                      child: Text(
                        "Register",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: Get.width / 20),

                  // Continue as Guest Text
                  GestureDetector(
                    onTap: () {
                      // Guest navigation
                      Get.toNamed(Routes.homePage);
                    },
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(color: Colors.white, fontSize: 15),
                        children: [
                          TextSpan(
                            text: "Continue as ",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          TextSpan(
                            text: "Guest",
                            style: TextStyle(
                              color: Colors.orange,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: Get.width / 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
