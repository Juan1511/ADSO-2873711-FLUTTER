import 'package:curriculum_vitae_v1_adso/EducacionFormal/principalEducacionFormal.dart';
import 'package:curriculum_vitae_v1_adso/ExperienciaLaboral/principalExperienciaLaboral.dart';
import 'package:curriculum_vitae_v1_adso/FormacionContinuada/principalFormacionContinuada.dart';
import 'package:curriculum_vitae_v1_adso/Publicaciones/PrincipalPublicacines.dart';
import 'package:curriculum_vitae_v1_adso/Referencias/PrincipalReferencias.dart';
import 'package:curriculum_vitae_v1_adso/Utils/utils.dart';
import 'package:curriculum_vitae_v1_adso/PerfilPersonal/perfilPersonal.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:curriculum_vitae_v1_adso/main.dart';

class HomePrincipal extends StatefulWidget {
  const HomePrincipal({super.key});

  @override
  State<HomePrincipal> createState() => _HomePrincipalState();
}

class _HomePrincipalState extends State<HomePrincipal> {
  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          appBar: AppBar(
            title: Center(child: Text(miControlador.Titulo)),
            backgroundColor: Utils.primaryColor,
            foregroundColor: Utils.foregroundColor,
          ),
          body: const Center(
            child: Image(image: NetworkImage('assets/images/logo.png')),
          ),
          drawer: Drawer(
            child: ListView(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                    child: CircleAvatar(
                      radius: 100,
                      backgroundImage: NetworkImage('assets/images/perfil.jpg'),
                    ),
                  ),
                ),
                Divider(color: Utils.primaryColor, height: 2),
                ListTile(
                  title: const Text('Home'),
                  leading: const Icon(Icons.home),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    miControlador.cambiarTitulo('Curriculum Vitae V2 - ADSO');
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: const Text('Informacion Personal'),
                  leading: const Icon(Icons.person),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    //Navigator.pop(context);
                    Get.to(const Perfilpersonal());
                  },
                ),
                ListTile(
                  title: const Text('Educacion Formal'),
                  leading: const Icon(Icons.school),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.pop(context);
                    Get.to(const PrincipalEducacionFormal());
                  },
                ),
                ListTile(
                  title: const Text('Formacion Continuada'),
                  leading: const Icon(Icons.book),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.pop(context);
                    Get.to(const PrincipalFormacionContinuada());
                  },
                ),
                ListTile(
                  title: const Text('Publicaciones'),
                  leading: const Icon(Icons.newspaper),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.pop(context);
                    Get.to(const Principalpublicacines());
                    miControlador.cambiarTitulo("Publicaciones");
                  },
                ),
                ListTile(
                  title: const Text('Experiencia Laboral'),
                  leading: const Icon(Icons.work_outline),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.pop(context);
                    Get.to(const Principalexperiencialaboral());
                  },
                ),
                ListTile(
                  title: const Text('Referencias'),
                  leading: const Icon(Icons.people),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.pop(context);
                    miControlador.cambiarTitulo('Referencias');
                    Get.to(const PrincipalReferencias());
                  },
                ),
                ListTile(
                  title: const Text('Acerca de'),
                  leading: const Icon(Icons.people),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    miControlador.cambiarTitulo('Acerca de');
                    Navigator.pop(context);
                  },
                )
              ],
            ),
          ),
        ));
  }
}
