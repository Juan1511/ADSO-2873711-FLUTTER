import 'package:flutter/material.dart';

import '../Utils/utils.dart';

viewEducacionFormal(BuildContext context, Map elementoActual) {
  showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Visualizar Experiencia Laboral'),
            backgroundColor: Utils.primaryColor,
            foregroundColor: Utils.foregroundColor,
          ),
          body: ListView(
            children: [
              ListTile(
                iconColor: elementoActual['colorCategoria'],
                leading: const Icon(Icons.category),
                title: Text(elementoActual['categoria']),
                subtitle: const Text('Categoria'),
              ),
              ListTile(
                iconColor: elementoActual['colorCategoria'],
                leading: const Icon(Icons.group_work),
                title: Text(elementoActual['titulo']),
                subtitle: const Text('Cargo'),
              ),
              ListTile(
                iconColor: elementoActual['colorCategoria'],
                leading: const Icon(Icons.work_history),
                title: Row(
                  children: [
                    Text(elementoActual["fechaInicio"]),
                    const Text(" |"),
                    Text(elementoActual["fechaFin"]),
                  ],
                ),
                subtitle: const Text('Periodo Trabajado'),
              ),
              ListTile(
                iconColor: elementoActual['colorCategoria'],
                leading: const Icon(Icons.work),
                title: Text(elementoActual["funciones"]),
                subtitle: const Text('Funciones'),
              ),
            ],
          ),
        );
      });
}
