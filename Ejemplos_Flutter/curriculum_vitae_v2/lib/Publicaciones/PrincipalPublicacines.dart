import 'package:curriculum_vitae_v1_adso/Utils/utils.dart';
import 'package:curriculum_vitae_v1_adso/data/publicacionesData.dart';
import 'package:flutter/material.dart';

class Principalpublicacines extends StatefulWidget {
  const Principalpublicacines({super.key});

  @override
  State<Principalpublicacines> createState() => _PrincipalpublicacinesState();
}

class _PrincipalpublicacinesState extends State<Principalpublicacines> {
  final TextEditingController _tituloController = TextEditingController();
  final TextEditingController _descripcionController = TextEditingController();
  final TextEditingController _fechaController = TextEditingController();
  final TextEditingController _lugarController = TextEditingController();

  void _agregarPublicacion() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Añadir Nueva Publicación'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: _tituloController,
                  decoration: InputDecoration(
                    labelText: 'Título',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: _descripcionController,
                  decoration: InputDecoration(
                    labelText: 'Descripción',
                    border: OutlineInputBorder(),
                  ),
                  maxLines: 3,
                ),
                SizedBox(height: 10),
                TextField(
                  controller: _fechaController,
                  decoration: InputDecoration(
                    labelText: 'Fecha',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: _lugarController,
                  decoration: InputDecoration(
                    labelText: 'Lugar',
                    border: OutlineInputBorder(),
                  ),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Cerrar el diálogo
                _limpiarControladores(); // Limpiar los controladores
              },
              child: Text('Cancelar'),
            ),
            ElevatedButton(
              onPressed: () {
                // Validar que todos los campos estén llenos
                if (_validarCampos()) {
                  // Crear nueva publicación
                  Map<String, String> nuevaPublicacion = {
                    'titulo': _tituloController.text,
                    'descripcion': _descripcionController.text,
                    'fecha': _fechaController.text,
                    'lugar': _lugarController.text,
                  };

                  // Añadir a la lista de publicaciones
                  setState(() {
                    Publicaciones.add(nuevaPublicacion);
                  });

                  Navigator.of(context).pop(); // Cerrar el diálogo
                  _limpiarControladores(); // Limpiar los controladores
                }
              },
              child: Text('Guardar'),
            ),
          ],
        );
      },
    );
  }

  // Función para eliminar una publicación
  void _eliminarPublicacion(int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Eliminar Publicación'),
          content:
              Text('¿Estás seguro de que deseas eliminar esta publicación?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Cerrar el diálogo
              },
              child: Text('Cancelar'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  Publicaciones.removeAt(
                      index); // Eliminar la publicación en el índice especificado
                });
                Navigator.of(context).pop(); // Cerrar el diálogo

                // Mostrar una confirmación de eliminación
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Publicación eliminada')),
                );
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              child: Text('Eliminar'),
            ),
          ],
        );
      },
    );
  }

  // Función para validar que todos los campos estén llenos
  bool _validarCampos() {
    if (_tituloController.text.isEmpty ||
        _descripcionController.text.isEmpty ||
        _fechaController.text.isEmpty ||
        _lugarController.text.isEmpty) {
      // Mostrar un SnackBar si hay campos vacíos
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Todos los campos son obligatorios')),
      );
      return false;
    }
    return true;
  }

  // Función para limpiar los controladores
  void _limpiarControladores() {
    _tituloController.clear();
    _descripcionController.clear();
    _fechaController.clear();
    _lugarController.clear();
  }

  @override
  void dispose() {
    // Limpiar los controladores cuando el widget se destruya
    _tituloController.dispose();
    _descripcionController.dispose();
    _fechaController.dispose();
    _lugarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Publicaciones"),
        backgroundColor: Utils.primaryColor,
        foregroundColor: Utils.foregroundColor,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: Publicaciones.length,
        itemBuilder: (context, index) {
          final publication = Publicaciones[index];
          return Card(
            elevation: 4,
            margin: EdgeInsets.symmetric(vertical: 8),
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          publication['titulo']!,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Utils.primaryColor,
                          ),
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.delete, color: Colors.red),
                        onPressed: () => _eliminarPublicacion(index),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text(
                    publication['descripcion']!,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Fecha: ${publication['fecha']}',
                        style: TextStyle(
                          fontSize: 14,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      Text(
                        'Lugar: ${publication['lugar']}',
                        style: TextStyle(
                          fontSize: 14,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _agregarPublicacion,
        backgroundColor: Utils.primaryColor,
        child: Icon(Icons.add, color: Utils.foregroundColor),
      ),
    );
  }
}
