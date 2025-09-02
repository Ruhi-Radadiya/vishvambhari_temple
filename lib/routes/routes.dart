import 'package:flutter/material.dart';
import 'package:vishvambhari_temple/view/screen/notification_screen.dart';

import '../view/screen/dashboard_screen.dart';
import '../view/screen/splash_screen.dart';

class Routes {
  static String splashPage = '/';
  static String homePage = 'homePage';
  static String notificationScreen = 'notificationScreen';

  static Map<String, WidgetBuilder> myRoutes = {
    splashPage: (context) => const SplashScreen(),
    homePage: (context) => const DashboardScreen(),
    notificationScreen: (context) => const NotificationScreen(),
  };
}
