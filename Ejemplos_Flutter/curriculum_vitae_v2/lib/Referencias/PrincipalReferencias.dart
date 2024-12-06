import 'package:curriculum_vitae_v1_adso/Utils/utils.dart';
import 'package:curriculum_vitae_v1_adso/data/referenciasData.dart';
import 'package:flutter/material.dart';

class PrincipalReferencias extends StatefulWidget {
  const PrincipalReferencias({super.key});

  @override
  State<PrincipalReferencias> createState() => _PrincipalReferenciasState();
}

class _PrincipalReferenciasState extends State<PrincipalReferencias> {
  final TextEditingController _nombreController = TextEditingController();
  final TextEditingController _cargoController = TextEditingController();
  final TextEditingController _empresaController = TextEditingController();
  final TextEditingController _telefonoController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  void _agregarReferencia() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Añadir Nueva Referencia'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: _nombreController,
                  decoration: InputDecoration(
                    labelText: 'Nombre Completo',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: _cargoController,
                  decoration: InputDecoration(
                    labelText: 'Cargo',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: _empresaController,
                  decoration: InputDecoration(
                    labelText: 'Empresa',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: _telefonoController,
                  decoration: InputDecoration(
                    labelText: 'Teléfono',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.phone,
                ),
                SizedBox(height: 10),
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: 'Correo Electrónico',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                _limpiarControladores();
              },
              child: Text('Cancelar'),
            ),
            ElevatedButton(
              onPressed: () {
                if (_validarCampos()) {
                  Map<String, String> nuevaReferencia = {
                    'nombre': _nombreController.text,
                    'cargo': _cargoController.text,
                    'empresa': _empresaController.text,
                    'telefono': _telefonoController.text,
                    'email': _emailController.text,
                  };

                  setState(() {
                    Referencias.add(nuevaReferencia);
                  });

                  Navigator.of(context).pop();
                  _limpiarControladores();
                }
              },
              child: Text('Guardar'),
            ),
          ],
        );
      },
    );
  }

  void _eliminarReferencia(int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Eliminar Referencia'),
          content:
              Text('¿Estás seguro de que deseas eliminar esta referencia?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('Cancelar'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  Referencias.removeAt(index);
                });
                Navigator.of(context).pop();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Referencia eliminada')),
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

  bool _validarCampos() {
    if (_nombreController.text.isEmpty ||
        _cargoController.text.isEmpty ||
        _empresaController.text.isEmpty ||
        _telefonoController.text.isEmpty ||
        _emailController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Todos los campos son obligatorios')),
      );
      return false;
    }
    return true;
  }

  void _limpiarControladores() {
    _nombreController.clear();
    _cargoController.clear();
    _empresaController.clear();
    _telefonoController.clear();
    _emailController.clear();
  }

  @override
  void dispose() {
    _nombreController.dispose();
    _cargoController.dispose();
    _empresaController.dispose();
    _telefonoController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Referencias"),
        backgroundColor: Utils.primaryColor,
        foregroundColor: Utils.foregroundColor,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: Referencias.length,
        itemBuilder: (context, index) {
          final referencia = Referencias[index];
          return Card(
            elevation: 6,
            margin: EdgeInsets.symmetric(vertical: 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        referencia['nombre']!,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Utils.primaryColor,
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.delete, color: Colors.red),
                        onPressed: () => _eliminarReferencia(index),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    '${referencia['cargo']} - ${referencia['empresa']}',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[700],
                    ),
                  ),
                  Divider(height: 20, color: Colors.grey[300]),
                  Text(
                    'Teléfono: ${referencia['telefono']}',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Correo Electrónico: ${referencia['email']}',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _agregarReferencia,
        backgroundColor: Utils.primaryColor,
        child: Icon(Icons.add, color: Utils.foregroundColor),
      ),
    );
  }
}
