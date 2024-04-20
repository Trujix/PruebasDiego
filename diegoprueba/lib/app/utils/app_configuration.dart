import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'dependency_injection.dart';

class AppConfiguration {
  static void init() {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp]
    );
    DependencyInjection.init();
  }
}