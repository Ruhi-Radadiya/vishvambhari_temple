import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 80),
    )..repeat();

    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, Routes.homePage);
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final double squareSize =
        sqrt(size.width * size.width + size.height * size.height) * 1.2;

    return Scaffold(
      backgroundColor: const Color(0xff152c3e),
      body: Stack(
        alignment: Alignment.center,
        children: [
          AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return Transform.rotate(
                angle: _controller.value * 2 * pi,
                child: child,
              );
            },

            child: SizedBox(
              width: Get.width * 2,
              height: Get.height * 2,
              child: FittedBox(
                fit: BoxFit.cover,
                alignment: AlignmentGeometry.center,
                child: Image.asset(
                  "assets/images/splash_screen_image/rays.png",
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Image.asset(
                "assets/images/home_images/splash_image.png",
                width: size.width * 0.6,
                height: size.width * 0.6,
              ),
            ],
          ),
          Positioned(
            bottom: size.height * 0.13,
            left: 0,
            right: 0,
            child: Text(
              "© JAYMAA.ORG",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: size.width * 0.03,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
