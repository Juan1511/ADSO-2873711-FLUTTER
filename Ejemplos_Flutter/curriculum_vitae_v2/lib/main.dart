import 'package:curriculum_vitae_v1_adso/controllers/miController.dart';
import 'package:curriculum_vitae_v1_adso/data/experienciaData.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'interfaz/principal.dart';

void main(List<String> args) {
  Get.put(MyController());
  miControlador.cambiarListaExperienciaLaboral(ListaExperienciaLaboral);
  runApp(Principal());
}

MyController miControlador =
    Get.find(); //crea instancia de la clase MyController