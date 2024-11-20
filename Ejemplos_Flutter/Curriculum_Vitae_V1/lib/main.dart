import 'package:flutter/material.dart';
import 'package:flutter_app_09/menu.dart';

void main(List<String> args) {
  runApp(HomePrincipal());
}

class HomePrincipal extends StatelessWidget {
  const HomePrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Curriculum Vitae V1',
      home: Menu()
    );
  }
}
