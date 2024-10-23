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
      title: 'Sitios Turisticos',
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Sitios Turisticos')),
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
        ),
        body: ListView.builder(
          itemCount: sitiosTuristicos.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              color: Colors.black,
              shadowColor: Colors.blue,
              elevation: 15,
              margin: const EdgeInsets.all(15),
              child: ListTile(
                iconColor: Colors.white,
                textColor: Colors.white,
                title: Text(sitiosTuristicos[index]),
                subtitle: Text('Maravilla # ${index + 1}'),
                leading: const Icon(Icons.add_location_alt_outlined),
                trailing: const Icon(Icons.arrow_forward_outlined),
                onTap: () {
                  //print('Tap sobre el sitio turistico ${sitiosTuristicos[index]}');
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Sitio Turistico # ${index + 1}'),
                          content: Text(sitiosTuristicos[index]),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text('Cerrar'))
                          ],
                        );
                      });
                },
              ),
            );
          },
        ),
        /*ListView.separated(
          itemCount: sitiosTuristicos.length,
          separatorBuilder: (BuildContext context, int index) {
            return const Divider();
          },
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(sitiosTuristicos[index]),
              subtitle: Text('Maravilla # ${index + 1}'),
              leading: const Icon(Icons.add_location_alt_outlined),
            );
          },
        ),*/
      ),
    );
  }
}

List<String> sitiosTuristicos = [
  'La Gran Muralla China, China',
  'Machu Picchu, Perú',
  'El Coliseo, Italia',
  'La Torre Eiffel, Francia',
  'El Taj Mahal, India',
  'Estatua de la Libertad, Estados Unidos',
  'Chichén Itzá, México',
  'Cristo Redentor, Brasil',
  'La Sagrada Familia, España',
  'El Gran Cañón, Estados Unidos',
  'Stonehenge, Reino Unido',
  'Angkor Wat, Camboya',
  'Las Cataratas del Niágara, Canadá/Estados Unidos',
  'Monte Fuji, Japón',
  'Acrópolis de Atenas, Grecia',
  'La Plaza Roja, Rusia',
  'La Torre de Londres, Reino Unido',
  'Palacio de Versalles, Francia',
  'El Louvre, Francia',
  'El Vaticano, Ciudad del Vaticano',
  'Islas Galápagos, Ecuador',
  'La Ópera de Sídney, Australia',
  'El Palacio de Buckingham, Reino Unido',
  'La Mezquita de Córdoba, España',
  'El Kremlin, Rusia',
  'Templo del Cielo, China',
  'Monte Kilimanjaro, Tanzania',
  'Pirámides de Giza, Egipto',
  'Isla de Pascua, Chile',
  'Santorini, Grecia',
  'Alhambra, España',
  'Lago Baikal, Rusia',
  'Parque Nacional de Yellowstone, Estados Unidos',
  'Templo Kinkaku-ji, Japón',
  'Plaza San Marcos, Italia',
  'El Vaticano, Italia',
  'Museo del Prado, España',
  'Monte Everest, Nepal/China',
  'Monte Rushmore, Estados Unidos',
  'Cueva de Waitomo, Nueva Zelanda',
  'Petra, Jordania',
  'Lago Bled, Eslovenia',
  'Burj Khalifa, Emiratos Árabes Unidos',
  'Puente Golden Gate, Estados Unidos',
  'Safari en el Serengeti, Tanzania',
  'Playa Waikiki, Hawái',
  'La Habana Vieja, Cuba',
  'Parque Nacional Torres del Paine, Chile',
  'Templo Borobudur, Indonesia',
  'La Gran Mezquita Sheikh Zayed, Emiratos Árabes Unidos',
  'Cataratas de Iguazú, Argentina/Brasil',
  'Museo Británico, Reino Unido',
  'Parque Nacional del Gran Teton, Estados Unidos',
  'Castillo de Edimburgo, Reino Unido',
  'Bahía de Ha Long, Vietnam',
  'Isla de Boracay, Filipinas',
  'Templo Meenakshi, India',
  'Catedral de Notre Dame, Francia',
  'Torre de Pisa, Italia',
  'Templos de Bagan, Myanmar',
  'Cueva de Altamira, España',
  'Playa de Copacabana, Brasil',
  'Ruta 66, Estados Unidos',
  'Monte Saint-Michel, Francia',
  'Islas Maldivas, Maldivas',
  'Museo de Arte Metropolitano, Estados Unidos',
  'Catedral de San Basilio, Rusia',
  'Jardines de Butchart, Canadá',
  'Palacio de Potala, Tíbet',
  'Catedral de Milán, Italia',
  'Palacio de Topkapi, Turquía',
  'La Ciudad Prohibida, China',
  'Las Vegas Strip, Estados Unidos',
  'Plaza de la Constitución, México',
  'Parque Nacional de Banff, Canadá',
  'Isla de Bali, Indonesia',
  'Templo de Luxor, Egipto',
  'Teotihuacán, México',
  'Plaza de la Revolución, Cuba',
  'El Lago Titicaca, Perú/Bolivia',
  'La Mezquita Azul, Turquía',
  'El Palacio de los Papas, Francia',
  'Parque Nacional de Kruger, Sudáfrica',
  'El Partenón, Grecia',
  'El Gran Bazar, Turquía',
  'El Mar Muerto, Israel/Jordania',
  'Las Islas Feroe, Dinamarca',
  'Las Cuevas de Ajanta, India',
  'El Palacio de Invierno, Rusia',
  'Los Jardines de Keukenhof, Países Bajos',
  'Museo Egipcio, Egipto',
  'Ciudadela de Alepo, Siria',
  'Tulum, México',
  'Cuevas de Carlsbad, Estados Unidos',
  'Museo de Orsay, Francia',
  'Montmartre, Francia',
  'Monte Elbrus, Rusia',
  'Parque Nacional de Yosemite, Estados Unidos',
  'Monasterios de Meteora, Grecia',
  'El Obelisco de Buenos Aires, Argentina',
  'Parque Nacional de los Glaciares, Argentina',
  'El Castillo de Bran, Rumanía'
];
