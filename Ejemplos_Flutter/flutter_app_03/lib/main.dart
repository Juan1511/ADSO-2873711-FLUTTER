import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const Principal());
}

class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle estilos =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 40));
    return MaterialApp(
      title: 'Widgets Basicos Flutter',
      home: Column(
        children: [
          const Text(
              overflow: TextOverflow.fade,
              softWrap: false,
              'Lenguajes De Programacion'),
          const Icon(
            Icons.add_to_drive_sharp,
            color: Color.fromARGB(255, 0, 76, 255),
            size: 100,
            semanticLabel: 'Drive',
          ),
          const Text('Dart'),
          const Text('Python'),
          const Text('JavaSvcript'),
          const Text('Java'),
          const Text('C++'),
          const Text('C#'),
          const Text('Rust'),
          const Text('PHP'),
          const Text('HTML'),
          const Text('\nBoton'),
          ElevatedButton(
            onPressed: () {},
            style: estilos,
            child: const Text('Enviar'),
          ),
          const Text('\nFilled'),
          FilledButton(
              onPressed: () {}, style: estilos, child: const Text('enviar')),
          const Text('\nFilled Tonal'),
          FilledButton.tonal(
              onPressed: () {}, style: estilos, child: const Text('Enviar')),
          const Text("\n"),
          const Image(
            image: NetworkImage(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
          ),
          const Text('\n'),
          const Image(image: NetworkImage('./images/buo.jpg')),
        ],
      ),
    );
  }
}
