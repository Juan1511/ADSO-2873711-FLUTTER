import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const Principal()); //Aca inicia y se lanza la aplicacion
}

class Principal extends StatelessWidget { // se hereda una clase que hereda de statelesswidget para crear un widget sin estado
  const Principal({super.key});

  @override //se sobreescribe el metodo build de la clase padre para generar la interfaz de usuario
  Widget build(BuildContext context) {
    //se retorna un widget, en nuestro caso MaterialApp
    return const MaterialApp(
      title: 'Mi Primera App - ADSO2873711',
      home: Text('Primera Aplicacion en Flutter\nJuan Manuel Zuluaga Rincon\nADSO 2873711\nCPIC - SENA'),
    );
  }
}

