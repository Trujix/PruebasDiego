import 'package:flutter/material.dart';

class MenuOpcionInkwell extends StatelessWidget {
  final String texto;
  final IconData? icono;
  final void Function() onTap;
  const MenuOpcionInkwell({
    super.key,
    required this.texto,
    this.icono,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.fromLTRB(20, 15, 10, 15),
        child: Row(
          children: [
            Icon(
              icono,
              color: Colors.indigoAccent,
              size: 25,
            ),
            Container(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                texto,
                style: const TextStyle(
                  color: Colors.indigoAccent,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}