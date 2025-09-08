import 'package:get/get.dart';
import 'package:vishvambhari_temple/view/screen/about_screen/donate_detail_screen.dart';
import 'package:vishvambhari_temple/view/screen/about_screen/shree_mahapatra_detail_page.dart';
import 'package:vishvambhari_temple/view/screen/notification_screen.dart';

import '../view/screen/about_screen/darshan_time_and_rules.dart';
import '../view/screen/about_screen/maa_vishvambhari_detail_page.dart';
import '../view/screen/about_screen/mvty_dham_detail_page.dart';
import '../view/screen/about_screen/objective_detail_page.dart';
import '../view/screen/about_screen/vedic_virtues.dart';
import '../view/screen/city_admin/add_city_admin.dart';
import '../view/screen/city_admin/view_city_admin.dart';
import '../view/screen/dashboard_screen.dart';
import '../view/screen/maa_parivar/add_parivar_screen.dart';
import '../view/screen/maa_parivar/view_all_parivar_screen.dart';
import '../view/screen/splash_screen.dart';
import '../view/screen/yagn_screen/city_admin_payment.dart';
import '../view/screen/yagn_screen/public_form.dart';
import '../view/screen/yagn_screen/view_yagn.dart';

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
  static String addParivar = '/add-parivar';
  static String viewParivar = '/view-parivar';
  static String addCityAdmin = '/add_city-admin';
  static String viewCityAdmin = '/view_city-admin';
  static String publicForm = '/public-form';
  static String viewYagn = '/view-yagn';
  static String cityAdminPayment = '/city-admin-payment';

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
    GetPage(name: addParivar, page: () => const AddParivarScreen()),
    GetPage(name: viewParivar, page: () => const ViewParivarScreen()),
    GetPage(name: addCityAdmin, page: () => const AddCityAdmin()),
    GetPage(name: viewCityAdmin, page: () => const ViewCityAdmin()),
    GetPage(name: publicForm, page: () => const PublicForm()),
    GetPage(name: viewYagn, page: () => const ViewYagn()),
    GetPage(name: cityAdminPayment, page: () => const CityAdminPayment()),
  ];
}
