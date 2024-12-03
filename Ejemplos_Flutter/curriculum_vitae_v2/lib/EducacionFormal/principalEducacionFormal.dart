import 'package:curriculum_vitae_v1_adso/EducacionFormal/addEditEducacionFormal.dart';
import 'package:curriculum_vitae_v1_adso/EducacionFormal/viewEducacionFormal.dart';
import 'package:curriculum_vitae_v1_adso/Utils/utils.dart';
import 'package:curriculum_vitae_v1_adso/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PrincipalEducacionFormal extends StatefulWidget {
  const PrincipalEducacionFormal({super.key});

  @override
  State<PrincipalEducacionFormal> createState() =>
      _PrincipalEducacionFormalState();
}

class _PrincipalEducacionFormalState extends State<PrincipalEducacionFormal> {
  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          appBar: AppBar(
            title: const Text("Educacion Formal"),
            backgroundColor: Utils.primaryColor,
            foregroundColor: Utils.foregroundColor,
          ),
          floatingActionButton: FloatingActionButton(
              backgroundColor: Utils.primaryColor,
              foregroundColor: Utils.foregroundColor,
              child: const Icon(Icons.add),
              onPressed: () {
                showModalAddEditEducacionFormal(context, "new", null, null);
              }),
          body: ListView.builder(
            itemCount: miControlador.ListaEducacionFormal.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: ListTile(
                  title:
                      Text(miControlador.ListaEducacionFormal[index]['titulo']),
                  subtitle: Text(
                      miControlador.ListaEducacionFormal[index]['categoria']),
                  leading: Text(
                      miControlador.ListaEducacionFormal[index]['fechaInicio']),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                          onPressed: () {
                            viewEducacionFormal(context,
                                miControlador.ListaEducacionFormal[index]);
                          },
                          icon: const Icon(Icons.search)),
                      IconButton(
                          onPressed: () {
                            showModalAddEditEducacionFormal(
                                context,
                                "edit",
                                miControlador.ListaEducacionFormal[index],
                                index);
                          },
                          icon: const Icon(Icons.edit)),
                      IconButton(
                          onPressed: () {
                            Get.defaultDialog(
                              title: "Atencion",
                              middleText:
                                  "Esta seguro en eliminar el registro con la experiencia como ${miControlador.ListaEducacionFormal[index]["titulo"]}",
                              onCancel: () {},
                              onConfirm: () {
                                miControlador
                                    .removeItemListaEducacionFormal(index);
                                Get.back();
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
