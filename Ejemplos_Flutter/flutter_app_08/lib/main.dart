import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyHome());
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grids',
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Trabajo con Grids')),
          backgroundColor: const Color.fromARGB(255, 250, 235, 105),
          foregroundColor: const Color.fromARGB(255, 89, 89, 89),
        ),
        body: Container(
          color: const Color.fromARGB(255, 249, 185, 89),
          child: GridView.count(
            crossAxisSpacing: 1,
            mainAxisSpacing: 2,
            crossAxisCount: 2, //Cantidad de elementos por fila
            children: const [
              Card(
                child: Column(
                  children: [
                    Text("Tarjeta 1"),
                    Text('ABCD'),
                    Text("1234"),
                    Icon(Icons.person)
                  ],
                ),
              ),
              Card(
                child: Text("Tarjeta 2"),
              ),
              Card(
                child: Text("Tarjeta 3"),
              ),
              Card(
                child: Text("Tarjeta 4"),
              ),
              Card(
                child: Text("Tarjeta 5"),
              ),
              Card(
                child: Text("Tarjeta 6"),
              ),
              Card(
                child: Text("Tarjeta 7"),
              ),
              Card(
                child: Text("Tarjeta 8"),
              ),
              Card(
                child: Text("Tarjeta 9"),
              ),
              Card(
                child: Text("Tarjeta 10"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
