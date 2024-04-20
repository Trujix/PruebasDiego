import 'package:get/get.dart';

import '../../services/api_caller_service.dart';
import '../models/api_result.dart';

class TipicodeProvider {
  final ApiCallerService _apiCallerService = Get.find<ApiCallerService>();

  Future<ApiResult?> llamadaApiAsync() async {
    try {
      var resultString = await _apiCallerService.get(
        "todos/1"
      );
      var result = ApiResult.fromString(resultString!);
      return result;
    } catch(e) {
      return null;
    }
  }
}