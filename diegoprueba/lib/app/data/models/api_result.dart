import 'dart:convert';

import 'package:get/get.dart';

import '../../services/tool_service.dart';

class ApiResult {
  final ToolService _tool = Get.find<ToolService>();

  int? userId;
  int? id;
  String? title;
  bool? completed;

  ApiResult({
    this.userId,
    this.id,
    this.title,
    this.completed,
  });

  Map toJson() => {
    'userId'    : userId,
    'id'        : id,
    'title'     : title,
    'completed' : completed
  };

  ApiResult.fromString(String jsonString) {
    var json = jsonDecode(jsonString);
    userId = _tool.str2int(json['userId'].toString());
    id = _tool.str2int(json['id'].toString());
    title = json['title'];
    completed = _tool.str2bool(json['completed'].toString());
  }

  ApiResult.fromJson(Map<String, dynamic> json) {
    userId = _tool.str2int(json['userId'].toString());
    id = _tool.str2int(json['id'].toString());
    title = json['title'];
    completed = _tool.str2bool(json['completed'].toString());
  }
}