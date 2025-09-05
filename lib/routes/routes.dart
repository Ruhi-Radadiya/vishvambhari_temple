import 'package:get/get.dart';
import 'package:vishvambhari_temple/view/screen/about_screen/donate_detail_screen.dart';
import 'package:vishvambhari_temple/view/screen/about_screen/shree_mahapatra_detail_page.dart';
import 'package:vishvambhari_temple/view/screen/notification_screen.dart';

import '../view/screen/about_screen/darshan_time_and_rules.dart';
import '../view/screen/about_screen/maa_vishvambhari_detail_page.dart';
import '../view/screen/about_screen/mvty_dham_detail_page.dart';
import '../view/screen/about_screen/objective_detail_page.dart';
import '../view/screen/about_screen/vedic_virtues.dart';
import '../view/screen/dashboard_screen.dart';
import '../view/screen/splash_screen.dart';

class Routes {
  static String splashPage = '/';
  static String homePage = '/homePage';
  static String notificationScreen = '/notificationScreen';
  static String maaVishvambhariDetailPage = '/maaVishvambhariDetailPage';
  static String shreeMahapatraDetailPage = '/shreeMahapatraDetailPage';
  static String mvtyDhamDetailPage = '/mvtyDhamDetailPage';
  static String objectiveDetailPage = '/objectiveDetailPage';
  static String vedicVirtues = '/vedicVirtues';
  static String darshanTimeAndRules = '/darshanTimeAndRules';
  static String donateDetailScreen = '/donateDetailScreen';

  static List<GetPage> myRoutes = [
    GetPage(name: splashPage, page: () => const SplashScreen()),
    GetPage(name: homePage, page: () => const DashboardScreen()),
    GetPage(name: notificationScreen, page: () => const NotificationScreen()),
    GetPage(
      name: maaVishvambhariDetailPage,
      page: () => const MaaVishvambhariDetailPage(),
    ),
    GetPage(
      name: shreeMahapatraDetailPage,
      page: () => ShreeMahapatraDetailPage(),
    ),
    GetPage(name: mvtyDhamDetailPage, page: () => MVTYDhamDetailPage()),
    GetPage(name: objectiveDetailPage, page: () => ObjectiveDetailPage()),
    GetPage(name: vedicVirtues, page: () => VedicVirtues()),
    GetPage(name: darshanTimeAndRules, page: () => DarshanTimeAndRules()),
    GetPage(name: donateDetailScreen, page: () => DonateDetailScreen()),
  ];
}
