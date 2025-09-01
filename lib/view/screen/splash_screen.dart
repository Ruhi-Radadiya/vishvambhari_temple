import 'dart:async';

import 'package:flutter/material.dart';

import '../../routes/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 10), () {
      Navigator.pushReplacementNamed(context, Routes.homePage);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff152c3e),
      body: Center(
        child: Image.asset(
          "assets/images/splash_image.png",
          height: 300,
          width: 300,
        ),
      ),
    );
  }
}
