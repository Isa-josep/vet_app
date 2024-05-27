import 'package:flutter/material.dart';

class NewsItem extends StatelessWidget {
  final String title;
  final String description;

  const NewsItem({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // Add padding to separate content from the border
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        border:
            Border.all(color: Color.fromARGB(255, 121, 40, 187), width: 3.0),
        borderRadius: BorderRadius.circular(40.0),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0), // Add rounded corners
            child: SizedBox(
              width: 80.0,
              height: 80.0,
              child: Image.asset('assets/gato1.jpeg'),
            ),
          ),
          const SizedBox(width: 8.0), // Add spacing between image and text
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(description),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        // Add padding to ListView for horizontal spacing
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        itemCount: newsItems.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              const Divider(
                height: 20,
                color: Colors.transparent,
              ),
              NewsItem(
                title: newsItems[index].title,
                description: newsItems[index].description,
              ),
              // Add vertical spacing between items
            ],
          );
        },
      ),
    );
  }
}

List<NewsItem> newsItems = [
  const NewsItem(
    title: 'Pago de cita',
    description: 'El pago de la cita fue realizado con exito',
  ),
  const NewsItem(
    title: 'Vacuna aplicada',
    description:
        'Su mascota a recidbido la vacuna contra la rabia el dia 20 de mayo',
  ),
  const NewsItem(
    title: 'Proxima cita',
    description: 'Cita reservada para el proximo viernes 12 de junio',
  ),

  const NewsItem(
    title: 'Cambio de cita',
    description: 'Su cita del 22 de mayo cambio de fecha',
  ),
  const NewsItem(
    title: 'Recordatorio de vacuna',
    description: 'Su mascota debe de volver a vacunarse en estos dias',
  ),
  const NewsItem(
    title: 'Pago de cita',
    description: 'El pago de la cita fue realizado con exito',
  ),
  const NewsItem(
    title: 'Proxima cita',
    description: 'Cita reservada para el proximo viernes 22 de octubre',
  ),

  const NewsItem(
    title: 'Vacuna aplicada',
    description:
        'Su mascota a recidbido la vacuna contra la rabia el dia 12 de octubre',
  ),

  // ... más noticias
];
