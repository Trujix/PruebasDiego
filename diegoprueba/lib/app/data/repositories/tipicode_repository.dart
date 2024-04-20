import 'package:get/get.dart';

import '../models/api_result.dart';
import '../providers/tipicode_provider.dart';

class TipicodeRepository {
  Future<ApiResult?> llamadaApiAsync() async {
    return await Get.find<TipicodeProvider>().llamadaApiAsync();
  }
}