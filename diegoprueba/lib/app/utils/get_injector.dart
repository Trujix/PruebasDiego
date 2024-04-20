import 'package:get/get.dart';

import '../data/repositories/tipicode_repository.dart';
import '../services/api_caller_service.dart';
import '../services/tool_service.dart';

class GetInjector extends GetxController {
  final ToolService tool = Get.find<ToolService>();
  final ApiCallerService api = Get.find<ApiCallerService>();

  final tipicodeRepository = Get.find<TipicodeRepository>();
}