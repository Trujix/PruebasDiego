import 'package:get/get.dart';

import '../../utils/get_injector.dart';

class PruebaController extends GetInjector {
  String nombre = "";

  @override
  void onInit() {
    var datosDeHome = Get.arguments;

    nombre = datosDeHome['nombre'] as String;
    super.onInit();
  }
}