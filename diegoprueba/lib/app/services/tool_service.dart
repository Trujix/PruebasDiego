import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToolService {
  void toast(String mensaje) {
    Fluttertoast.cancel();
    Fluttertoast.showToast(
      msg: mensaje,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.grey,
      textColor: Colors.white,
      fontSize: 14,
    );
  }

  int str2int(String cadena) {
    return int.tryParse(cadena) ?? 0;
  }

  bool str2bool(String cadena) {
    return cadena.toLowerCase() == 'true';
  }
}