import 'package:get/get.dart';
import '../modules/home/home_page.dart';
import 'app_routes.dart';

class AppPages {
  static List<GetPage<dynamic>>? pages = [
    GetPage(
      name: AppRoutes.home,
      page: () => const HomePage(),
      transition: Transition.noTransition,
    ),
  ];
}
