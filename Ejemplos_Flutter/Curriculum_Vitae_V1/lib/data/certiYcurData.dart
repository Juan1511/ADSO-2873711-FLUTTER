import 'package:flutter/material.dart';

List<Map<String, dynamic>> estudiosYCursos = [
  {
    "id": 1,
    "titulo": "Ingeniería en Sistemas Computacionales",
    "anioRealizacion": 2015,
    "categoria": "Educación Formal",
    "colorCategoria": Colors.blue,
    "descripcion":
        "Formación integral en desarrollo de software, redes, y gestión de proyectos, con énfasis en tecnologías emergentes."
  },
  {
    "id": 2,
    "titulo": "Certificación en Desarrollo Web Full Stack",
    "anioRealizacion": 2018,
    "categoria": "Certificación",
    "colorCategoria": Colors.green,
    "descripcion":
        "Programa intensivo enfocado en el desarrollo de aplicaciones web usando tecnologías como React, Node.js y MongoDB."
  },
  {
    "id": 3,
    "titulo": "Diplomado en Ciencia de Datos",
    "anioRealizacion": 2020,
    "categoria": "Diplomado",
    "colorCategoria": Colors.orange,
    "descripcion":
        "Estudio de análisis de datos, estadística avanzada y uso de herramientas como Python, R y Tableau para la toma de decisiones basadas en datos."
  },
  {
    "id": 4,
    "titulo": "Curso de Introducción a DevOps",
    "anioRealizacion": 2019,
    "categoria": "Curso",
    "colorCategoria": Colors.purple,
    "descripcion":
        "Curso centrado en metodologías ágiles, automatización de procesos y herramientas como Docker, Jenkins y Kubernetes."
  },
  {
    "id": 5,
    "titulo": "Certificación en Seguridad Informática",
    "anioRealizacion": 2021,
    "categoria": "Certificación",
    "colorCategoria": Colors.red,
    "descripcion":
        "Enfoque en auditorías de seguridad, detección de vulnerabilidades y protección de infraestructuras digitales críticas."
  },
  {
    "id": 6,
    "titulo": "Curso de Diseño UX/UI",
    "anioRealizacion": 2017,
    "categoria": "Curso",
    "colorCategoria": Colors.teal,
    "descripcion":
        "Taller práctico sobre diseño de interfaces y experiencia de usuario, incluyendo prototipos interactivos y diseño centrado en el usuario."
  },
  {
    "id": 7,
    "titulo": "Diplomado en Inteligencia Artificial",
    "anioRealizacion": 2022,
    "categoria": "Diplomado",
    "colorCategoria": Colors.cyan,
    "descripcion":
        "Exploración de redes neuronales, aprendizaje profundo y procesamiento del lenguaje natural con frameworks como TensorFlow y PyTorch."
  },
  {
    "id": 8,
    "titulo": "Curso de Bases de Datos Avanzadas",
    "anioRealizacion": 2016,
    "categoria": "Curso",
    "colorCategoria": Colors.indigo,
    "descripcion":
        "Estudio de bases de datos relacionales y no relacionales, incluyendo optimización de consultas y modelado de datos."
  },
  {
    "id": 9,
    "titulo": "Certificación en Desarrollo de Apps Móviles",
    "anioRealizacion": 2019,
    "categoria": "Certificación",
    "colorCategoria": Colors.pink,
    "descripcion":
        "Especialización en desarrollo de aplicaciones móviles nativas para Android y iOS, con Kotlin y Swift."
  },
  {
    "id": 10,
    "titulo": "Curso de Testing Automatizado",
    "anioRealizacion": 2018,
    "categoria": "Curso",
    "colorCategoria": Colors.yellow,
    "descripcion":
        "Capacitación en pruebas automatizadas para aplicaciones web y móviles, utilizando herramientas como Selenium y Appium."
  },
  {
    "id": 11,
    "titulo": "Taller de Desarrollo en Flutter",
    "anioRealizacion": 2023,
    "categoria": "Taller",
    "colorCategoria": Colors.lightBlue,
    "descripcion":
        "Desarrollo de aplicaciones multiplataforma usando Flutter y Dart, con un enfoque en interfaces fluidas y responsivas."
  },
  {
    "id": 12,
    "titulo": "Diplomado en Blockchain y Criptomonedas",
    "anioRealizacion": 2021,
    "categoria": "Diplomado",
    "colorCategoria": Colors.deepOrange,
    "descripcion":
        "Estudio de tecnología blockchain, desarrollo de contratos inteligentes y análisis de criptomonedas como activos digitales."
  },
  {
    "id": 13,
    "titulo": "Certificación en Arquitectura de Software",
    "anioRealizacion": 2020,
    "categoria": "Certificación",
    "colorCategoria": Colors.brown,
    "descripcion":
        "Diseño de arquitecturas escalables y orientadas a microservicios, con un enfoque en patrones de diseño y buenas prácticas."
  },
  {
    "id": 14,
    "titulo": "Curso de Big Data y Analítica",
    "anioRealizacion": 2019,
    "categoria": "Curso",
    "colorCategoria": Colors.amber,
    "descripcion":
        "Introducción al manejo de grandes volúmenes de datos con Hadoop, Spark y bases de datos distribuidas."
  },
  {
    "id": 15,
    "titulo": "Especialización en Machine Learning",
    "anioRealizacion": 2022,
    "categoria": "Especialización",
    "colorCategoria": Colors.lightGreen,
    "descripcion":
        "Desarrollo de modelos predictivos y de clasificación con algoritmos de aprendizaje supervisado y no supervisado."
  },
  {
    "id": 16,
    "titulo": "Curso de Programación en Python",
    "anioRealizacion": 2018,
    "categoria": "Curso",
    "colorCategoria": Colors.grey,
    "descripcion":
        "Curso básico e intermedio sobre programación en Python, incluyendo aplicaciones para automatización y análisis de datos."
  },
  {
    "id": 17,
    "titulo": "Certificación en Redes Cisco CCNA",
    "anioRealizacion": 2017,
    "categoria": "Certificación",
    "colorCategoria": Colors.black,
    "descripcion":
        "Certificación en configuración, gestión y monitoreo de redes Cisco para entornos empresariales."
  },
  {
    "id": 18,
    "titulo": "Diplomado en Metodologías Ágiles",
    "anioRealizacion": 2020,
    "categoria": "Diplomado",
    "colorCategoria": Colors.lime,
    "descripcion":
        "Estudio de metodologías ágiles como Scrum y Kanban, con un enfoque en la mejora continua y la gestión de equipos."
  },
  {
    "id": 19,
    "titulo": "Taller de IoT y Domótica",
    "anioRealizacion": 2023,
    "categoria": "Taller",
    "colorCategoria": Colors.deepPurple,
    "descripcion":
        "Implementación de proyectos de Internet de las Cosas (IoT) con dispositivos Arduino y Raspberry Pi."
  },
  {
    "id": 20,
    "titulo": "Curso de Desarrollo en Java",
    "anioRealizacion": 2016,
    "categoria": "Curso",
    "colorCategoria": Colors.blueGrey,
    "descripcion":
        "Curso completo de desarrollo en Java, incluyendo fundamentos, programación orientada a objetos y aplicaciones empresariales."
  },
];
