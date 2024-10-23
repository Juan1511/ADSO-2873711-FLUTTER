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
          title: const Center(child: Text('Informacion Personal')),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: ListView(
          children: const [
            Padding(
              padding: EdgeInsets.all(20.0),
            ),
            Column(children: [
              CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkfF6nBhidhIzL330CYtg70I8tpDBGJ2YjBPnE9D9gY0iLmGu563WBIab4KBexSDv7kG8&usqp=CAU'),
              ),
              Image(
                image: NetworkImage('./images/paisaje.jpeg'),
                height: 200,
              ),
              ListTile(
                title: Text('Juan Manuel'),
                subtitle: Text("Nombre"),
                leading: Icon(Icons.account_circle_outlined),
              ),
              Divider(),
              ListTile(
                title: Text("Zuluaga Rincon"),
                subtitle: Text("Apellido"),
                leading: Icon(Icons.account_circle_rounded),
              ),
              Divider(),
              ListTile(
                title: Text("3042114264"),
                subtitle: Text('Telefono'),
                leading: Icon(Icons.add_ic_call_outlined),
              ),
              Divider(),
              ListTile(
                title: Text('Cra 34D # 61 - 37'),
                subtitle: Text('Direccion'),
                leading: Icon(Icons.add_location_alt_outlined),
              ),
              Divider(),
              ListTile(
                title: Text('SENA - CPIC'),
                subtitle: Text('Empresa'),
                leading: Icon(Icons.apartment_outlined),
              ),
              Divider(),
              ListTile(
                title: Text('17001'),
                subtitle: Text('Codigo Postal'),
                leading: Icon(Icons.app_registration_outlined),
              ),
            ])
          ],
        ),
      ),
    );
  }
}
