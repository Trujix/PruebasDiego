import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../utils/literals.dart';

class ApiCallerService {
  var api = Dio()
  ..options.receiveTimeout = 15.seconds
  ..options.connectTimeout = 15.seconds;

  Future<String?> get(String url) async {
    try {
      var response = await api.get(
        "${Literals.url}$url"
      );
      return jsonEncode(response.data);
    } catch(e) {
      return null;
    } finally {

    }
  }
}