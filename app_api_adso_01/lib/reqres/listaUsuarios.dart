import 'package:app_api_adso_01/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListaUsuarios extends StatefulWidget {
  const ListaUsuarios({super.key});

  @override
  State<ListaUsuarios> createState() => _ListaUsuariosState();
}

class _ListaUsuariosState extends State<ListaUsuarios> {
  @override
  Widget build(BuildContext context) {
    return Obx(() => ListView.builder(
          itemCount: miControlador.ListaUsuauriosReqRes.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              elevation: 15,
              child: ListTile(
                title: Text(miControlador.ListaUsuauriosReqRes[index]
                        ['first_name'] +
                    " " +
                    miControlador.ListaUsuauriosReqRes[index]['last_name']),
                subtitle:
                    Text(miControlador.ListaUsuauriosReqRes[index]['email']),
                leading: Image(
                    image: NetworkImage(
                        miControlador.ListaUsuauriosReqRes[index]['avatar'])),
                trailing: Text('Id:' +
                    miControlador.ListaUsuauriosReqRes[index]['id'].toString()),
              ),
            );
          },
        ));
  }
}
