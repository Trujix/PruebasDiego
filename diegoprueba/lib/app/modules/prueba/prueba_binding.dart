import 'package:get/get.dart';

import 'prueba_controller.dart';

class PruebaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PruebaController());
  }
}