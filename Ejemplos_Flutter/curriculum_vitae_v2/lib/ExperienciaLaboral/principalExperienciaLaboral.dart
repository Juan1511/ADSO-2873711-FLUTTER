import 'package:curriculum_vitae_v1_adso/ExperienciaLaboral/ViewExperineciaLaboral.dart';
import 'package:curriculum_vitae_v1_adso/ExperienciaLaboral/addEditExperienciaLaboral.dart';
import 'package:curriculum_vitae_v1_adso/Utils/utils.dart';
import 'package:curriculum_vitae_v1_adso/data/experienciaData.dart';
import 'package:curriculum_vitae_v1_adso/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Principalexperiencialaboral extends StatefulWidget {
  const Principalexperiencialaboral({super.key});

  @override
  State<Principalexperiencialaboral> createState() =>
      _PrincipalexperiencialaboralState();
}

class _PrincipalexperiencialaboralState
    extends State<Principalexperiencialaboral> {
  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          appBar: AppBar(
            title: Text("Experiencia Laboral"),
            backgroundColor: Utils.primaryColor,
            foregroundColor: Utils.foregroundColor,
          ),
          floatingActionButton: FloatingActionButton(
              backgroundColor: Utils.primaryColor,
              foregroundColor: Utils.foregroundColor,
              child: Icon(Icons.add),
              onPressed: () {
                showModalAddEditExperiencia(context, "new", null, null);
              }),
          body: ListView.builder(
            itemCount: miControlador.ListaExperienciaLab.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: ListTile(
                  title:
                      Text(miControlador.ListaExperienciaLab[index]['titulo']),
                  subtitle: Text(
                      miControlador.ListaExperienciaLab[index]['categoria']),
                  leading: Text(
                      miControlador.ListaExperienciaLab[index]['fechaInicio']),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                          onPressed: () {
                            viewExperineciaLaboral(context,
                                miControlador.ListaExperienciaLab[index]);
                          },
                          icon: Icon(Icons.search)),
                      IconButton(
                          onPressed: () {
                            showModalAddEditExperiencia(context, "edit",
                                miControlador.ListaExperienciaLab[index], index);
                          },
                          icon: Icon(Icons.edit)),
                      IconButton(
                          onPressed: () {
                            Get.defaultDialog(
                              title: "Atencion",
                              middleText:
                                  "Esta seguro en eliminar el registro con la experiencia como ${miControlador.ListaExperienciaLab[index]["titulo"]}",
                              onCancel: () {},
                              onConfirm: () {
                                miControlador
                                    .removeItemListaExperienciaLaboral(index);
                                Get.back();
                              },
                            );
                          },
                          icon: Icon(Icons.delete)),
                    ],
                  ),
                ),
              );
            },
          ),
        ));
  }
}
