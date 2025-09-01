import 'package:flutter/material.dart';

import '../view/screen/dashboard_screen.dart';
import '../view/screen/splash_screen.dart';

class Routes {
  static String splashPage = '/';
  static String homePage = 'homePage';

  static Map<String, WidgetBuilder> myRoutes = {
    splashPage: (context) => const SplashScreen(),
    homePage: (context) => const DashboardScreen(),
  };
}