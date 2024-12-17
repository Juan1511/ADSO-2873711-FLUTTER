import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home.dart';

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Consumo de APIS - 01",
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}