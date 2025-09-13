import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../routes/routes.dart';
import '../../components/textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 20),
    )..repeat();
  }

  bool _obscurePassword = true;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
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
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: Get.width / 30),
          // Adjusted horizontal padding
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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

              SizedBox(height: 0),

              Stack(
                alignment: Alignment.center,
                children: [
                  RotationTransition(
                    turns: _controller,
                    child: Image.asset(
                      "assets/images/login.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Image.asset(
                    "assets/images/home_images/logo.png",
                    height: Get.width / 2.5,
                  ),
                ],
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Login",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Login to continue using the app",
                  style: TextStyle(color: Colors.white70, fontSize: 15),
                ),
              ),
              SizedBox(height: h * 0.03),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Email/Contact no.",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: h * 0.01),
              CommonTextField(
                controller: emailController,
                hint: "Enter your email/Contact no.",
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: h * 0.02),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Password",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: h * 0.01),
              CommonTextField(
                controller: passwordController,
                hint: "Enter your Password",
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.none,
                obscureText: _obscurePassword,
                suffixIcon: Padding(
                  padding: EdgeInsets.only(right: Get.width / 60),
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        _obscurePassword = !_obscurePassword;
                      });
                    },
                    icon: Icon(
                      _obscurePassword
                          ? Icons.visibility_off
                          : Icons.visibility,
                      color: Colors.white54,
                    ),
                  ),
                ),
              ),
              SizedBox(height: Get.width / 220),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Get.toNamed(Routes.forgotScreen);
                  },
                  child: const Text(
                    "Forgot Password ?",
                    style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.w200,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              SizedBox(height: Get.width / 22),
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
                  onPressed: () {
                    Get.toNamed(Routes.splashPage);
                  },
                  child: const Text(
                    "Login",

                    style: TextStyle(
                      fontSize: 16,
                      letterSpacing: 1,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: Container(
        color: Color(0xff000617),
        child: Padding(
          padding: EdgeInsets.only(bottom: Get.width / 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Don't have an account ? ",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w100,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.registrationScreen);
                },
                child: const Text(
                  "Register",
                  style: TextStyle(
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
