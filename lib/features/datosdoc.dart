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
      especialidad: 'Cardiólogo',
      especialidad2: 'Cardiólogo',
      especialidad3: 'Cardiólogo',
      description: 'Especialista en enfermedades del corazón',
      distance: 5,
      likes: 200,
      fotoUrl: 'assets/doc.webp'),
  Doctor(
      nombre: 'Dra. Ana Domínguez',
      especialidad: 'Dermatóloga',
      especialidad2: 'Dermatóloga',
      especialidad3: 'Dermatóloga',
      distance: 6,
      likes: 200,
      fotoUrl: 'assets/docprueba.png',
      description: 'Especialista en comida'),
  Doctor(
      nombre: 'Dr. Pedro González',
      especialidad: 'Neurólogo',
      especialidad2: 'Neurólogo',
      especialidad3: 'Neurólogo',
      distance: 3,
      likes: 200,
      fotoUrl: 'assets/doc.webp',
      description: 'Especialista en enfermedades del cerebro'),
  Doctor(
      nombre: 'Dra. María López',
      especialidad: 'Pediatra',
      especialidad2: 'Pediatra',
      distance: 6,
      likes: 200,
      especialidad3: 'Pediatra',
      fotoUrl: 'assets/docprueba.png',
      description: 'Especialista en enfermedades del cerebro'),
  Doctor(
      nombre: 'Dr. David Hernández',
      especialidad: 'Psiquiatra',
      especialidad2: 'Psiquiatra',
      especialidad3: 'Psiquiatra',
      distance: 2,
      likes: 200,
      fotoUrl: 'assets/doc.webp',
      description: 'Especialista en enfermedades del corazón'),
];

Doctor getDoctor(int index) {
  return doctores[index];
}
