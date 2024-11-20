import 'package:flutter/material.dart';

List<Map<String, dynamic>> experienciaLaboral = [
  {
    "id": 1,
    "titulo": "Desarrollador Frontend",
    "fechaInicio": "2018-01",
    "fechaFin": "2019-06",
    "categoria": "Frontend",
    "colorCategoria": Colors.blue,
    "iconoCategoria": Icons.code,
    "funciones":
        "Diseño y desarrollo de interfaces de usuario utilizando Angular y Bootstrap."
  },
  {
    "id": 2,
    "titulo": "Desarrollador Backend",
    "fechaInicio": "2019-07",
    "fechaFin": "2021-03",
    "categoria": "Backend",
    "colorCategoria": Colors.green,
    "iconoCategoria": Icons.storage,
    "funciones": [
      "Diseño y mantenimiento de APIs RESTful.",
      "Implementación de sistemas de autenticación y autorización.",
      "Optimización de consultas SQL para bases de datos MySQL."
    ]
  },
  {
    "id": 3,
    "titulo": "Desarrollador Full Stack",
    "fechaInicio": "2021-04",
    "fechaFin": "2023-01",
    "categoria": "Full Stack",
    "colorCategoria": Colors.orange,
    "iconoCategoria": Icons.integration_instructions,
    "funciones": [
      "Diseño de aplicaciones web completas usando React y Node.js.",
      "Gestión de despliegues en AWS.",
      "Colaboración en equipos ágiles siguiendo metodología Scrum."
    ]
  },
  {
    "id": 4,
    "titulo": "Ingeniero de Software",
    "fechaInicio": "2023-02",
    "fechaFin": "Presente",
    "categoria": "Ingeniería de Software",
    "colorCategoria": Colors.purple,
    "iconoCategoria": Icons.engineering,
    "funciones":
        "Desarrollo de soluciones escalables en entornos de alta disponibilidad."
  },
  {
    "id": 5,
    "titulo": "Especialista en DevOps",
    "fechaInicio": "2017-03",
    "fechaFin": "2018-12",
    "categoria": "DevOps",
    "colorCategoria": Colors.cyan,
    "iconoCategoria": Icons.cloud,
    "funciones": [
      "Automatización de despliegues mediante Jenkins.",
      "Configuración y gestión de contenedores Docker.",
      "Monitoreo de sistemas con herramientas como Prometheus y Grafana."
    ]
  },
  {
    "id": 6,
    "titulo": "Diseñador UX/UI",
    "fechaInicio": "2016-05",
    "fechaFin": "2017-02",
    "categoria": "Diseño",
    "colorCategoria": Colors.teal,
    "iconoCategoria": Icons.design_services,
    "funciones":
        "Creación de prototipos interactivos para aplicaciones móviles y web."
  },
  {
    "id": 7,
    "titulo": "Analista de Sistemas",
    "fechaInicio": "2015-07",
    "fechaFin": "2016-04",
    "categoria": "Análisis",
    "colorCategoria": Colors.red,
    "iconoCategoria": Icons.analytics,
    "funciones": [
      "Recolección de requerimientos funcionales.",
      "Elaboración de diagramas UML para modelar procesos.",
      "Validación de requisitos con stakeholders."
    ]
  },
  {
    "id": 8,
    "titulo": "Administrador de Bases de Datos",
    "fechaInicio": "2014-01",
    "fechaFin": "2015-06",
    "categoria": "Bases de Datos",
    "colorCategoria": Colors.indigo,
    "iconoCategoria": Icons.storage,
    "funciones": [
      "Diseño y administración de bases de datos SQL Server.",
      "Optimización de índices y consultas complejas.",
      "Backup y restauración de datos en entornos críticos."
    ]
  },
  {
    "id": 9,
    "titulo": "Desarrollador Móvil",
    "fechaInicio": "2013-03",
    "fechaFin": "2014-12",
    "categoria": "Móvil",
    "colorCategoria": Colors.pink,
    "iconoCategoria": Icons.phone_android,
    "funciones": [
      "Desarrollo de aplicaciones nativas para Android.",
      "Consumo de APIs RESTful desde aplicaciones móviles.",
      "Implementación de interfaces siguiendo Material Design."
    ]
  },
  {
    "id": 10,
    "titulo": "Tester de Software",
    "fechaInicio": "2012-02",
    "fechaFin": "2013-02",
    "categoria": "QA",
    "colorCategoria": Colors.yellow,
    "iconoCategoria": Icons.bug_report,
    "funciones":
        "Diseño y ejecución de pruebas manuales y automatizadas para aplicaciones web."
  },
  {
    "id": 11,
    "titulo": "Líder Técnico",
    "fechaInicio": "2021-02",
    "fechaFin": "2022-06",
    "categoria": "Liderazgo",
    "colorCategoria": Colors.brown,
    "iconoCategoria": Icons.leaderboard,
    "funciones": [
      "Gestión de equipos de desarrollo.",
      "Supervisión de entregables técnicos.",
      "Mentoría a desarrolladores junior."
    ]
  },
  {
    "id": 12,
    "titulo": "Arquitecto de Software",
    "fechaInicio": "2022-07",
    "fechaFin": "Presente",
    "categoria": "Arquitectura",
    "colorCategoria": Colors.deepPurple,
    "iconoCategoria": Icons.architecture,
    "funciones":
        "Diseño de arquitecturas escalables y orientadas a microservicios."
  },
  {
    "id": 13,
    "titulo": "Desarrollador de Videojuegos",
    "fechaInicio": "2011-09",
    "fechaFin": "2012-12",
    "categoria": "Videojuegos",
    "colorCategoria": Colors.deepOrange,
    "iconoCategoria": Icons.videogame_asset,
    "funciones": [
      "Programación de mecánicas de juego en Unity.",
      "Optimización de rendimiento en dispositivos móviles.",
      "Implementación de IA para NPCs."
    ]
  },
  {
    "id": 14,
    "titulo": "Especialista en Seguridad Informática",
    "fechaInicio": "2020-01",
    "fechaFin": "2021-01",
    "categoria": "Ciberseguridad",
    "colorCategoria": Colors.black,
    "iconoCategoria": Icons.security,
    "funciones": [
      "Auditorías de seguridad en aplicaciones web.",
      "Implementación de políticas de seguridad.",
      "Gestión de incidentes de ciberseguridad."
    ]
  },
  {
    "id": 15,
    "titulo": "Consultor IT",
    "fechaInicio": "2018-05",
    "fechaFin": "2019-09",
    "categoria": "Consultoría",
    "colorCategoria": Colors.lime,
    "iconoCategoria": Icons.lightbulb,
    "funciones":
        "Asesoramiento técnico en la implementación de soluciones empresariales."
  },
  {
    "id": 16,
    "titulo": "Administrador de Sistemas",
    "fechaInicio": "2017-11",
    "fechaFin": "2018-04",
    "categoria": "Sistemas",
    "colorCategoria": Colors.lightBlue,
    "iconoCategoria": Icons.computer,
    "funciones": [
      "Gestión de servidores Linux y Windows.",
      "Monitoreo de infraestructura con Nagios.",
      "Configuración de redes empresariales."
    ]
  },
  {
    "id": 17,
    "titulo": "Analista de Datos",
    "fechaInicio": "2016-06",
    "fechaFin": "2017-10",
    "categoria": "Datos",
    "colorCategoria": Colors.amber,
    "iconoCategoria": Icons.bar_chart,
    "funciones": "Creación de dashboards interactivos con Power BI y Tableau."
  },
  {
    "id": 18,
    "titulo": "Ingeniero en Machine Learning",
    "fechaInicio": "2020-03",
    "fechaFin": "2021-12",
    "categoria": "IA",
    "colorCategoria": Colors.lightGreen,
    "iconoCategoria": Icons.smart_toy,
    "funciones": [
      "Entrenamiento de modelos predictivos usando TensorFlow.",
      "Implementación de pipelines de datos para modelos de aprendizaje automático.",
      "Optimización de hiperparámetros para modelos complejos."
    ]
  },
  {
    "id": 19,
    "titulo": "Especialista en Blockchain",
    "fechaInicio": "2019-02",
    "fechaFin": "2020-12",
    "categoria": "Blockchain",
    "colorCategoria": Colors.grey,
    "iconoCategoria": Icons.link,
    "funciones": "Diseño y desarrollo de contratos inteligentes en Solidity."
  },
  {
    "id": 20,
    "titulo": "Instructor de Programación",
    "fechaInicio": "2023-03",
    "fechaFin": "Presente",
    "categoria": "Educación",
    "colorCategoria": Colors.blueGrey,
    "iconoCategoria": Icons.school,
    "funciones": [
      "Impartir cursos de programación en Python y Java.",
      "Desarrollar materiales didácticos y ejercicios prácticos.",
      "Mentoría a estudiantes en proyectos finales."
    ]
  },
];
