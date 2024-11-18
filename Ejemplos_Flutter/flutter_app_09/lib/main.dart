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
      title: 'Curriculum Vitae V1',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Curriculum Vitae V1'),
          ),
          backgroundColor: Colors.green,
          foregroundColor: Colors.black,
        ),
        body: Column(
          children: [
            const SizedBox(height: 20),
            const Center(
                child: CircleAvatar(
              radius: 150,
              backgroundImage: NetworkImage('images/foto.jpg'),
            )),
            const SizedBox(height: 20),
            Container(
              height: 3,
              width: double.infinity,
              color: Colors.green,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: sections.length,
                itemBuilder: (BuildContext context, int index) {
                  final section = sections[index];
                  return Card(
                    color: Colors.white,
                    shadowColor: Colors.green,
                    elevation: 15,
                    margin: const EdgeInsets.all(15),
                    child: ListTile(
                      iconColor: Colors.black,
                      textColor: Colors.black,
                      title: Text(section['Titulo']),
                      leading: Icon(section['icon']),
                      trailing: const Icon(Icons.arrow_forward_outlined),
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                              content: Text('Abriendo: ${section['Titulo']}')),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Lista de secciones
List<Map<String, dynamic>> sections = [
  {"Titulo": "Información Personal", "icon": Icons.person},
  {"Titulo": "Formación Académica", "icon": Icons.school},
  {"Titulo": "Certificaciones y Cursos", "icon": Icons.badge},
  {"Titulo": "Experiencia Laboral", "icon": Icons.work},
  {"Titulo": "Habilidades", "icon": Icons.lightbulb},
  {"Titulo": "Proyectos destacados", "icon": Icons.star},
  {"Titulo": "Idiomas", "icon": Icons.language},
  {"Titulo": "Referencias personales", "icon": Icons.contact_page},
];
