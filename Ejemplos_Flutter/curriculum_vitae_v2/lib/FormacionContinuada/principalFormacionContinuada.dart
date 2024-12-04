import 'package:curriculum_vitae_v1_adso/FormacionContinuada/addEditFormacionContinuada.dart';
import 'package:curriculum_vitae_v1_adso/FormacionContinuada/viewFormacionContinuada.dart';
import 'package:curriculum_vitae_v1_adso/Utils/utils.dart';
import 'package:curriculum_vitae_v1_adso/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PrincipalFormacionContinuada extends StatefulWidget {
  const PrincipalFormacionContinuada({super.key});

  @override
  State<PrincipalFormacionContinuada> createState() =>
      _PrincipalFormacionContinuadaState();
}

class _PrincipalFormacionContinuadaState
    extends State<PrincipalFormacionContinuada> {
  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          appBar: AppBar(
            title: const Text("Formacion Continuada"),
            backgroundColor: Utils.primaryColor,
            foregroundColor: Utils.foregroundColor,
          ),
          floatingActionButton: FloatingActionButton(
              backgroundColor: Utils.primaryColor,
              foregroundColor: Utils.foregroundColor,
              child: const Icon(Icons.add),
              onPressed: () {
                showModalAddEditFormacionContinuada(context, "new", null, null);
              }),
          body: ListView.builder(
            itemCount: miControlador.ListaFormacionContinuada.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: ListTile(
                  title: Text(
                      miControlador.ListaFormacionContinuada[index]['titulo']),
                  subtitle: Text(miControlador.ListaFormacionContinuada[index]
                      ['categoria']),
                  leading: Text(miControlador.ListaFormacionContinuada[index]
                      ['fechaInicio']),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                          onPressed: () {
                            viewFormacionContinuada(context,
                                miControlador.ListaFormacionContinuada[index]);
                          },
                          icon: const Icon(Icons.search)),
                      IconButton(
                          onPressed: () {
                            showModalAddEditFormacionContinuada(
                                context,
                                "edit",
                                miControlador.ListaFormacionContinuada[index],
                                index);
                          },
                          icon: const Icon(Icons.edit)),
                      IconButton(
                          onPressed: () {
                            Get.defaultDialog(
                              title: "Atencion",
                              middleText:
                                  "Esta seguro en eliminar el registro con la formacion ${miControlador.ListaFormacionContinuada[index]["titulo"]}",
                              onCancel: () {},
                              onConfirm: () {
                                miControlador
                                    .removeItemListaFormacionContinuada(index);
                                Get.back();
                                Get.snackbar(
                                    "Atencion", "Formacion eliminada con exito",
                                    backgroundColor: Colors.green,
                                    colorText: Colors.black,
                                    icon: const Icon(Icons.delete));
                              },
                            );
                          },
                          icon: const Icon(Icons.delete)),
                    ],
                  ),
                ),
              );
            },
          ),
        ));
  }
}
