import 'package:get/get.dart';
import 'package:vishvambhari_temple/view/screen/notification_screen.dart';

import '../view/screen/dashboard_screen.dart';
import '../view/screen/splash_screen.dart';

class Routes {
  static String splashPage = '/';
  static String homePage = '/homePage';
  static String notificationScreen = '/notificationScreen';

  static List<GetPage> myRoutes = [
    GetPage(name: splashPage, page: () => const SplashScreen()),
    GetPage(name: homePage, page: () => const DashboardScreen()),
    GetPage(name: notificationScreen, page: () => const NotificationScreen()),
  ];
}
