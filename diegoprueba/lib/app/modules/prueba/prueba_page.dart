import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'prueba_controller.dart';

class PruebaPage extends StatelessWidget {
  const PruebaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PruebaController>(
      builder: (_) => Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Text(
            'Hola ${_.nombre}',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
