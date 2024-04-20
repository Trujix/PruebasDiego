import 'package:get/get.dart';

import '../modules/home/home_binding.dart';
import '../modules/home/home_page.dart';
import '../modules/prueba/prueba_binding.dart';
import '../modules/prueba/prueba_page.dart';
import 'app_routes.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: Approutes.home,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Approutes.prueba,
      page: () => const PruebaPage(),
      binding: PruebaBinding(),
    ),
  ];
}