import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const Principal());
}

class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Informacion Personal',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Informacion Personal'),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: const Column(
          children: [
            ListTile(
                title: Text('Juan Manuel Zuluaga'),
                subtitle: Text('Nombre'),
                leading: Icon(Icons.person)),
          ],
        ),
      ),
    );
  }
}
