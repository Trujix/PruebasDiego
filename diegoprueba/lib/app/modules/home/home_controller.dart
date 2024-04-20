import 'dart:convert';

import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../data/models/api_result.dart';
import '../../utils/get_injector.dart';
import '../prueba/prueba_binding.dart';
import '../prueba/prueba_page.dart';

class HomeController extends GetInjector {
  String texto = "";
  
  @override
  void onInit() {
    texto = "Que tengas un buen din de semana";
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  void prueba() {
    tool.toast("mensaje");
  }

  Future<void> ejecutarLink(RedSocial opcion) async {
    var uriString = "https://www.google.com";
    switch(opcion) {
      case RedSocial.facebook:
        uriString = "https://m.facebook.com";
        break;
      case RedSocial.snapchat:
        uriString = "https://m.snapchat.com";
        break;
      case RedSocial.twitter:
        uriString = "https://m.x.com";
        break;
      case RedSocial.instagram:
        uriString = "https://m.instagram.com";
        break;
      case RedSocial.youtube:
        uriString = "https://m.youtube.com";
        break;
    }
    var url = Uri.parse(uriString);
    if(!await launchUrl(url)) {
      tool.toast("Error al abrir el link");
    }
  }

  Future<void> modelo() async {
    var result = await tipicodeRepository.llamadaApiAsync();
    print(result!.title!);
    /*var api = ApiResult(
      id: 1,
      userId: 15,
      title: "hola",
      completed: true,
    );
    print(jsonEncode(api));

    var jsonString = '{"id": "666", "title": "Hola Diego como estas?"}';
    var apiNueva = ApiResult.fromString(jsonString);
    print(apiNueva.title);
    

    var arrayString = '[{"title": "El Diego se encuentra"}, {"title": "En una capacitacion de flutter"}]';
    Iterable apiIterable = jsonDecode(arrayString);
    var listaApi = List<ApiResult>.from(
      apiIterable.map((json) => ApiResult.fromJson(json))
    );
    for(var api in listaApi) {
      print("-------------------------------------\n");
      print(api.title);
    }*/
  }

  void navegar() {
    /*Get.toNamed(
      '',
      arguments: 
    );
    Get.offAll(
      const PruebaPage(),
      binding: PruebaBinding(),
      transition: Transition.circularReveal,
      duration: 2.seconds,
      arguments: 
    );*/
    Get.to(
      const PruebaPage(),
      binding: PruebaBinding(),
      transition: Transition.circularReveal,
      duration: 2.seconds,
      arguments: {
        "nombre": "Pepe",
      }
    );
  }
}

enum RedSocial {
  facebook,
  twitter,
  snapchat,
  instagram,
  youtube,
}