import 'package:flutter/material.dart';

import '../Utils/utils.dart';

viewExperineciaLaboral(BuildContext context, Map elementoActual) {
  showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Visualizar Experiencia Laboral'),
            backgroundColor: Utils.primaryColor,
            foregroundColor: Utils.foregroundColor,
          ),
          body: ListView(
            children: [
              ListTile(
                iconColor: elementoActual['colorCategoria'],
                leading: Icon(Icons.category),
                title: Text(elementoActual['categoria']),
                subtitle: Text('Categoria'),
              ),
              ListTile(
                iconColor: elementoActual['colorCategoria'],
                leading: Icon(Icons.group_work),
                title: Text(elementoActual['titulo']),
                subtitle: Text('Cargo'),
              ),
              ListTile(
                iconColor: elementoActual['colorCategoria'],
                leading: Icon(Icons.work_history),
                title: Row(
                  children: [
                    Text(elementoActual["fechaInicio"]),
                    Text(" |"),
                    Text(elementoActual["fechaFin"]),
                  ],
                ),
                subtitle: Text('Periodo Trabajado'),
              ),
              ListTile(
                iconColor: elementoActual['colorCategoria'],
                leading: Icon(Icons.work),
                title: Text(elementoActual["funciones"]),
                subtitle: Text('Funciones'),
              ),
            ],
          ),
        );
      });
}
