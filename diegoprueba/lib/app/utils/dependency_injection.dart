import 'package:get/get.dart';

import '../data/providers/tipicode_provider.dart';
import '../data/repositories/tipicode_repository.dart';
import '../services/api_caller_service.dart';
import '../services/tool_service.dart';

class DependencyInjection {
  static void init() {
    Get.put<ToolService>(ToolService());
    Get.put<ApiCallerService>(ApiCallerService());

    Get.put<TipicodeRepository>(TipicodeRepository());
    Get.put<TipicodeProvider>(TipicodeProvider());
  }
}