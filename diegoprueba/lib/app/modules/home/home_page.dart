import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../widgets/inkwells/menu_opcion_inkwell.dart';
import 'home_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (_) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: const Icon(
            Icons.person,
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              MenuOpcionInkwell(
                texto: "Facebook",
                icono: FontAwesomeIcons.facebook,
                onTap: () => _.ejecutarLink(RedSocial.facebook),
              ),
              MenuOpcionInkwell(
                texto: "Twitter",
                icono: FontAwesomeIcons.twitter,
                onTap: () {
                  _.ejecutarLink(RedSocial.twitter);
                },
              ),
              MenuOpcionInkwell(
                texto: "Snapchat",
                icono: FontAwesomeIcons.snapchat,
                onTap: () => _.ejecutarLink(RedSocial.snapchat),
              ),
              MenuOpcionInkwell(
                texto: "Instagram",
                icono: FontAwesomeIcons.instagram,
                onTap: () => _.ejecutarLink(RedSocial.instagram),
              ),
              MenuOpcionInkwell(
                texto: "Youtube",
                icono: FontAwesomeIcons.youtube,
                onTap: () => _.ejecutarLink(RedSocial.youtube),
              ),
            ],
          ),
        ),
        body: Center(
          child: Column(
            children: [
              const Expanded(child: SizedBox()),
              InkWell(
                onTap: _.modelo,
                child: const Text(
                  'Trabajar Modelo',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 20,
                  ),
                ),
              ),
              InkWell(
                onTap: _.navegar,
                child: const Text(
                  'Abrir',
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 20,
                  ),
                ),
              ),
              const Expanded(child: SizedBox()),
            ],
          ),
        ),
      ),
    );
  }
}
