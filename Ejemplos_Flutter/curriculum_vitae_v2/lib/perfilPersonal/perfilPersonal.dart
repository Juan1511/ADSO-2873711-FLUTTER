import 'package:curriculum_vitae_v1_adso/Utils/utils.dart';
import 'package:flutter/material.dart';

import '../data/perfilData.dart';

class Perfilpersonal extends StatefulWidget {
  const Perfilpersonal({super.key});

  @override
  State<Perfilpersonal> createState() => _PerfilpersonalState();
}

class _PerfilpersonalState extends State<Perfilpersonal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Informacion Personal')),
        backgroundColor: Utils.primaryColor,
        foregroundColor: Utils.foregroundColor,
      ),
      body: ListView(
        children: [
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            crossAxisCount: 2,
            children: <Widget>[
              const Card(
                shadowColor: Colors.black,
                elevation: 10,
                child: Center(
                    child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  child: Image(
                    image: NetworkImage('assets/images/perfil.jpg'),
                    fit: BoxFit.cover,
                    width: 230,
                    height: 230,
                  ),
                )),
              ),
              Card(
                shadowColor: Colors.black,
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Expanded(
                        child: ListTile(
                          title: Text(perfilDataList['nombre']),
                          leading: const Icon(Icons.person),
                        ),
                      ),
                      const Divider(
                        color: Colors.black,
                        indent: 16.0,
                        endIndent: 16.0,
                        height: 0.5,
                      ),
                      Expanded(
                        child: ListTile(
                          title: Text(perfilDataList['celular']),
                          leading: const Icon(Icons.phone),
                        ),
                      ),
                      const Divider(
                        color: Colors.black,
                        indent: 16.0,
                        endIndent: 16.0,
                        height: 0.5,
                      ),
                      Expanded(
                        child: ListTile(
                          title: Text(perfilDataList['direccion']),
                          leading: const Icon(Icons.add_location),
                        ),
                      ),
                      const Divider(
                        color: Colors.black,
                        indent: 16.0,
                        endIndent: 16.0,
                        height: 0.5,
                      ),
                      Expanded(
                        child: ListTile(
                          title: Text(perfilDataList['gitHub']),
                          leading: const Icon(Icons.computer),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                shadowColor: Colors.black,
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Dart', style: TextStyle(fontSize: 16)),
                      LinearProgressIndicator(
                        value: 0.7,
                        backgroundColor: Colors.grey[300],
                        valueColor:
                            const AlwaysStoppedAnimation<Color>(Colors.green),
                      ),
                      const SizedBox(height: 8),
                      const Text('Flutter', style: TextStyle(fontSize: 16)),
                      LinearProgressIndicator(
                        value: 0.6,
                        backgroundColor: Colors.grey[300],
                        valueColor:
                            const AlwaysStoppedAnimation<Color>(Colors.green),
                      ),
                      const SizedBox(height: 8),
                      const Text('JavaScript', style: TextStyle(fontSize: 16)),
                      LinearProgressIndicator(
                        value: 0.9,
                        backgroundColor: Colors.grey[300],
                        valueColor:
                            const AlwaysStoppedAnimation<Color>(Colors.green),
                      ),
                      const SizedBox(height: 8),
                      const Text('PHP', style: TextStyle(fontSize: 16)),
                      LinearProgressIndicator(
                        value: 0.5,
                        backgroundColor: Colors.grey[300],
                        valueColor:
                            const AlwaysStoppedAnimation<Color>(Colors.green),
                      ),
                      const SizedBox(height: 8),
                      const Text('Python', style: TextStyle(fontSize: 16)),
                      LinearProgressIndicator(
                        value: 0.8,
                        backgroundColor: Colors.grey[300],
                        valueColor:
                            const AlwaysStoppedAnimation<Color>(Colors.green),
                      ),
                      const SizedBox(height: 8),
                      const Text('React', style: TextStyle(fontSize: 16)),
                      LinearProgressIndicator(
                        value: 0.65,
                        backgroundColor: Colors.grey[300],
                        valueColor:
                            const AlwaysStoppedAnimation<Color>(Colors.green),
                      ),
                      const SizedBox(height: 8),
                      const Text('SQL', style: TextStyle(fontSize: 16)),
                      LinearProgressIndicator(
                        value: 0.9,
                        backgroundColor: Colors.grey[300],
                        valueColor:
                            const AlwaysStoppedAnimation<Color>(Colors.green),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                shadowColor: Colors.black,
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment:
                        MainAxisAlignment.center, // Centra verticalmente
                    crossAxisAlignment: CrossAxisAlignment
                        .start, // Mantén el texto alineado a la izquierda
                    children: [
                      const Text('Dart', style: TextStyle(fontSize: 16)),
                      LinearProgressIndicator(
                        value: 0.7,
                        backgroundColor: Colors.grey[300],
                        valueColor:
                            const AlwaysStoppedAnimation<Color>(Colors.blue),
                      ),
                      const SizedBox(height: 8),
                      const Text('Flutter', style: TextStyle(fontSize: 16)),
                      LinearProgressIndicator(
                        value: 0.6,
                        backgroundColor: Colors.grey[300],
                        valueColor:
                            const AlwaysStoppedAnimation<Color>(Colors.blue),
                      ),
                      const SizedBox(height: 8),
                      const Text('JavaScript', style: TextStyle(fontSize: 16)),
                      LinearProgressIndicator(
                        value: 0.9,
                        backgroundColor: Colors.grey[300],
                        valueColor:
                            const AlwaysStoppedAnimation<Color>(Colors.blue),
                      ),
                      const SizedBox(height: 8),
                      const Text('PHP', style: TextStyle(fontSize: 16)),
                      LinearProgressIndicator(
                        value: 0.5,
                        backgroundColor: Colors.grey[300],
                        valueColor:
                            const AlwaysStoppedAnimation<Color>(Colors.blue),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Card(
            shadowColor: Colors.black,
            elevation: 15,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(perfilDataList['perfil']),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
