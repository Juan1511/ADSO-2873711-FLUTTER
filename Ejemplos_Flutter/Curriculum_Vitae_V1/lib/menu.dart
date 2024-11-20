import 'package:flutter/material.dart';
import 'package:flutter_app_09/data/certiYcurData.dart';
import 'package:flutter_app_09/data/experienciaLaboralData.dart';
import 'package:flutter_app_09/data/formacionAcademicaData.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Curriculum Vitae V1")),
        backgroundColor: Colors.green,
        foregroundColor: Colors.black,
      ),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage('assets/images/foto.jpg'),
              ),
            ),
          ),
          const Divider(color: Colors.green),
          Card(
            elevation: 10,
            shadowColor: Colors.green,
            child: ListTile(
              title: const Text('Informacion Personal'),
              leading: const Icon(Icons.person),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
          ),
          Card(
            elevation: 10,
            shadowColor: Colors.green,
            child: ListTile(
              title: const Text('Formacion Academica'),
              leading: const Icon(Icons.school),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    builder: (context) {
                      return Scaffold(
                        appBar: AppBar(
                          title: const Text('Formacion Ademica'),
                          backgroundColor: Colors.green,
                          foregroundColor: Colors.black,
                        ),
                        body: ListView.separated(
                          itemCount: formacionAcademicaLista.length,
                          separatorBuilder: (BuildContext context, int index) {
                            return const Divider();
                          },
                          itemBuilder: (BuildContext context, int index) {
                            return ListTile(
                              title: Text(
                                  formacionAcademicaLista[index]['titulo']),
                              subtitle: Text(
                                formacionAcademicaLista[index]['tipoEstudio'],
                                style: TextStyle(
                                    color: formacionAcademicaLista[index]
                                        ['color']),
                              ),
                              leading: Text(formacionAcademicaLista[index]
                                      ['anioFinalizacion']
                                  .toString()),
                            );
                          },
                        ),
                      );
                    });
              },
            ),
          ),
          Card(
            elevation: 10,
            shadowColor: Colors.green,
            child: ListTile(
              title: const Text('Certificaciones y Cursos'),
              leading: const Icon(Icons.science),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    builder: (context) {
                      return Scaffold(
                        appBar: AppBar(
                          title: Text('Certificaciones y Cursos'),
                          backgroundColor: Colors.green,
                          foregroundColor: Colors.black,
                        ),
                        body: ListView.separated(
                          itemCount: estudiosYCursos.length,
                          separatorBuilder: (BuildContext context, int index) {
                            return const Divider();
                          },
                          itemBuilder: (BuildContext context, int index) {
                            return ListTile(
                              title: Center(
                                  child:
                                      Text(estudiosYCursos[index]['titulo'])),
                              subtitle: Column(
                                children: [
                                  Text(
                                    estudiosYCursos[index]['categoria'],
                                    style: TextStyle(
                                        color: estudiosYCursos[index]
                                            ['colorCategoria']),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(12),
                                    child: Text(
                                        estudiosYCursos[index]['descripcion']),
                                  )
                                ],
                              ),
                              leading: Text(estudiosYCursos[index]
                                      ['anioRealizacion']
                                  .toString()),
                            );
                          },
                        ),
                      );
                    });
              },
            ),
          ),
          Card(
            elevation: 10,
            shadowColor: Colors.green,
            child: ListTile(
              title: const Text('Experiencia Laboral'),
              leading: const Icon(Icons.factory),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    builder: (context) {
                      return Scaffold(
                        appBar: AppBar(
                          title: const Text('Experinecia Laboral'),
                          backgroundColor: Colors.green,
                          foregroundColor: Colors.black,
                        ),
                        body: ListView.separated(
                          itemCount: experienciaLaboral.length,
                          separatorBuilder: (BuildContext context, int index) {
                            return const Divider();
                          },
                          itemBuilder: (BuildContext context, int index) {
                            return ListTile(
                              title: Center(
                                  child: Text(
                                      experienciaLaboral[index]['titulo'])),
                              subtitle: Column(
                                children: [
                                  Text(
                                    experienciaLaboral[index]['categoria'],
                                    style: TextStyle(
                                        color: experienciaLaboral[index]
                                            ['colorCategoria']),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Text(experienciaLaboral[index]
                                            ['funciones']
                                        .toString()),
                                  )
                                ],
                              ),
                              leading: Column(
                                children: [
                                  Text(
                                      experienciaLaboral[index]['fechaInicio']),
                                  Padding(
                                    padding: const EdgeInsets.all(12),
                                    child: Text(
                                        experienciaLaboral[index]['fechaFin']),
                                  )
                                ],
                              ),
                              trailing: Icon(
                                experienciaLaboral[index]['iconoCategoria'],
                                color: experienciaLaboral[index]
                                    ['colorCategoria'],
                              ),
                            );
                          },
                        ),
                      );
                    });
              },
            ),
          ),
          Card(
            elevation: 10,
            shadowColor: Colors.green,
            child: ListTile(
              title: const Text('Habilidades'),
              leading: const Icon(Icons.fact_check),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
          ),
          Card(
            elevation: 10,
            shadowColor: Colors.green,
            child: ListTile(
              title: const Text('Proyectos Destacados'),
              leading: const Icon(Icons.star),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
          ),
          Card(
            elevation: 10,
            shadowColor: Colors.green,
            child: ListTile(
              title: const Text('Idiomas'),
              leading: const Icon(Icons.language),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
          ),
          Card(
            elevation: 10,
            shadowColor: Colors.green,
            child: ListTile(
              title: const Text('Referencias Personales'),
              leading: const Icon(Icons.people_alt),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
