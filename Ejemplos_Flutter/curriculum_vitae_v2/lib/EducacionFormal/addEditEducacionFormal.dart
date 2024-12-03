import 'package:curriculum_vitae_v1_adso/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Utils/utils.dart';

final TextEditingController idController = TextEditingController();
final TextEditingController tituloController = TextEditingController();
final TextEditingController fechaInicioController = TextEditingController();
final TextEditingController fechaFinController = TextEditingController();
final TextEditingController funcionesController = TextEditingController();
final TextEditingController categoriaController = TextEditingController();

void limpiarCampos() {
  tituloController.clear();
  fechaInicioController.clear();
  fechaFinController.clear();
  funcionesController.clear();
  categoriaController.clear();
}

showModalAddEditEducacionFormal(
    context, String opcionAddEdit, dynamic elementoActual, dynamic index) {
  limpiarCampos();
  if (opcionAddEdit == "edit") {
    tituloController.text = elementoActual['titulo'];
    fechaInicioController.text = elementoActual['fechaInicio'];
    fechaFinController.text = elementoActual['fechaFin'];
    funcionesController.text = elementoActual['funciones'];
    categoriaController.text = elementoActual['categoria'];
  }
  showModalBottomSheet(
      isScrollControlled: false,
      context: context,
      builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: Text(opcionAddEdit == "new"
                ? 'Ingresar Educacion'
                : "editar Educacion"),
            backgroundColor: Utils.primaryColor,
            foregroundColor: Utils.foregroundColor,
          ),
          floatingActionButton: FloatingActionButton(
              backgroundColor: Utils.primaryColor,
              foregroundColor: Utils.foregroundColor,
              child: opcionAddEdit == "new"
                  ? const Icon(Icons.save)
                  : const Icon(Icons.edit),
              onPressed: () {
                //se ejecuta cuando se guarda un elemento de experiencia
                if (opcionAddEdit == "new") {
                  Map<String, dynamic> newItem = {
                    "titulo": tituloController.text,
                    "fechaInicio": fechaInicioController.text,
                    "fechaFin": fechaFinController.text,
                    "funciones": funcionesController.text,
                    "categoria": categoriaController.text,
                    "colorCategoria": Colors.blue
                  };
                  miControlador.addItemListaEducacionFormal(newItem);
                  Get.back();
                  limpiarCampos();
                  Get.snackbar("Atencion", "Experiencia agregada con exito",
                      backgroundColor: Colors.green,
                      colorText: Colors.black,
                      icon: const Icon(Icons.add));
                } else {
                  //logica registro editar
                  Map<String, dynamic> elementEdit = {
                    "id": 10,
                    "titulo": tituloController.text,
                    "fechaInicio": fechaInicioController.text,
                    "fechaFin": fechaFinController.text,
                    "funciones": funcionesController.text,
                    "categoria": categoriaController.text,
                    "colorCategoria": Colors.brown
                  };
                  miControlador.editItemListaEducacionFormal(
                      index, elementEdit);
                  Get.back();
                  limpiarCampos();
                  Get.snackbar("Atencion", "Experiencia editada con exito",
                      backgroundColor: Colors.green,
                      colorText: Colors.black,
                      icon: const Icon(Icons.add));
                }
              }),
          body: Padding(
            padding: const EdgeInsets.all(16),
            child: ListView(
              children: [
                TextFormField(
                  controller: tituloController,
                  decoration: const InputDecoration(
                      labelText: "Titulo",
                      hintText: "Ingrese titulo de la educacion formal"),
                ),
                TextFormField(
                  controller: fechaInicioController,
                  decoration: const InputDecoration(
                      labelText: "Fecha Inicio",
                      hintText:
                          "Ingrese la fecha de inicio de la educacion formal"),
                ),
                TextFormField(
                  controller: fechaFinController,
                  decoration: const InputDecoration(
                      labelText: "Fecha Fin",
                      hintText: "Ingrese la fecha fin de la educacion formal"),
                ),
                TextFormField(
                  controller: funcionesController,
                  decoration: const InputDecoration(
                      labelText: "Funciones",
                      hintText: "Ingrese las funciones de la educacion formal"),
                ),
                TextFormField(
                  controller: categoriaController,
                  decoration: const InputDecoration(
                      labelText: "Categoria",
                      hintText: "Ingrese la categoria de la educacion formal"),
                ),
              ],
            ),
          ),
        );
      });
}
