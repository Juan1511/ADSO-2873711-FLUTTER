import 'package:app_api_adso_01/controllers/myController.dart';
import 'package:app_api_adso_01/interfaces/inicio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'interfaces/principal.dart';
import 'reqres/listaUsuarios.dart';

void main(List<String> args) {
  Get.put(MyController());
  runApp(Principal());
}

MyController miControlador = Get.find();

List<dynamic> opcionPaginas = [
  Inicio(),
  ListaUsuarios(),
];
