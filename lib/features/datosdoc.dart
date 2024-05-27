class Doctor {
  final String nombre;
  final String especialidad;
  final String especialidad2;
  final String especialidad3;
  final int likes;
  final double distance;
  final String fotoUrl;
  final String description;
  // Agrega otras propiedades relevantes

  Doctor({
    required this.nombre,
    required this.especialidad,
    required this.especialidad2,
    required this.especialidad3,
    required this.likes,
    required this.distance,
    required this.description,
    required this.fotoUrl,
  });
}

final List<Doctor> doctores = [
  Doctor(
      nombre: 'Dr. Juan Pérez',
      especialidad: 'Cardiología ',
      especialidad2: 'Cirugía ',
      especialidad3: 'Veterinario ',
      description: 'Especialista en enfermedades del corazón',
      distance: 5,
      likes: 200,
      fotoUrl: 'assets/doc.webp'),
  Doctor(
      nombre: 'Dra. Ana Domínguez',
      especialidad: 'Dermatología ',
      especialidad2: 'Cirugía',
      especialidad3: 'Veterinario ',
      distance: 6,
      likes: 200,
      fotoUrl: 'assets/docprueba.png',
      description: 'Especialista en problemas de piel y comportamiento',
  ),
  Doctor(
      nombre: 'Dr. Pedro González',
      especialidad: 'Neurología ',
      especialidad2: 'Cirugía ',
      especialidad3: 'Veterinario ',
      distance: 3,
      likes: 200,
      fotoUrl: 'assets/doc.webp',
      description: 'Especialista en enfermedades del cerebro',
  ),
  Doctor(
      nombre: 'Dra. María López',
      especialidad: 'Pediatría ',
      especialidad2: 'cardiología ',
      especialidad3: 'Veterinario ',
      distance: 6,
      likes: 200,
      fotoUrl: 'assets/docprueba.png',
      description: 'Especialista en cuidado de mascotas jóvenes',
  ),
  Doctor(
      nombre: 'Dr. David Hernández',
      especialidad: 'Veterinario ',
      especialidad2: 'Cardiología ',
      especialidad3: 'Cirugía',
      distance: 2,
      likes: 200,
      fotoUrl: 'assets/doc.webp',
      description: 'Especialista en cuidados generales y problemas cardíacos',
  ),
];

Doctor getDoctor(int index) {
  return doctores[index];
}
