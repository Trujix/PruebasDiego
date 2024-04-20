import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/modules/home/home_binding.dart';
import 'app/modules/home/home_page.dart';
import 'app/routes/app_pages.dart';
import 'app/utils/app_configuration.dart';

void main() {
  AppConfiguration.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Diego Sesion',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      getPages: AppPages.pages,
      home: const HomePage(),
      initialBinding: HomeBinding(),
    );
  }
}