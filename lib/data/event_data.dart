// lib/data/event_data.dart

class Event {
  final String imageUrl;
  final String name;
  final String category;
  final String date;
  final String time;
  final String location;
  final int availableSpots;

  Event({
    required this.imageUrl,
    required this.name,
    required this.category,
    required this.date,
    required this.time,
    required this.location,
    required this.availableSpots,
  });
}

final List<Event> universityEvents = [
  // Tecnología (4)
  Event(
    imageUrl: 'https://loremflickr.com/400/200/cybersecurity,hack?lock=1',
    name: 'Torneo CTF: Plataformas de Práctica',
    category: 'Tecnología',
    date: '15 Oct 2026',
    time: '10:00 AM',
    location: 'Laboratorio de Seguridad',
    availableSpots: 40,
  ),
  Event(
    imageUrl: 'https://loremflickr.com/400/200/programming,code?lock=2',
    name: 'Meetup: Dart y Manejo de Estado',
    category: 'Tecnología',
    date: '18 Oct 2026',
    time: '04:00 PM',
    location: 'Sala de Cómputo B',
    availableSpots: 35,
  ),
  Event(
    imageUrl: 'https://loremflickr.com/400/200/software,architecture?lock=3',
    name: 'Taller de Arquitectura de Software',
    category: 'Tecnología',
    date: '20 Oct 2026',
    time: '11:00 AM',
    location: 'Auditorio de Ingeniería',
    availableSpots: 100,
  ),
  Event(
    imageUrl: 'https://loremflickr.com/400/200/database,server?lock=4',
    name: 'Foro: Descomposición de Consultas',
    category: 'Tecnología',
    date: '22 Oct 2026',
    time: '05:00 PM',
    location: 'Edificio de Sistemas',
    availableSpots: 60,
  ),

  // Académicos (4)
  Event(
    imageUrl: 'https://loremflickr.com/400/200/mathematics,board?lock=5',
    name: 'Seminario de Programación Lineal',
    category: 'Académicos',
    date: '25 Oct 2026',
    time: '09:00 AM',
    location: 'Aula Magna',
    availableSpots: 120,
  ),
  Event(
    imageUrl: 'https://loremflickr.com/400/200/lecture,university?lock=6',
    name: 'Conferencia: Tablas Hash Distribuidas',
    category: 'Académicos',
    date: '28 Oct 2026',
    time: '12:00 PM',
    location: 'Sala de Conferencias',
    availableSpots: 80,
  ),
  Event(
    imageUrl: 'https://loremflickr.com/400/200/science,students?lock=7',
    name: 'Coloquio de Matemáticas Aplicadas',
    category: 'Académicos',
    date: '30 Oct 2026',
    time: '10:00 AM',
    location: 'Explanada de Ciencias',
    availableSpots: 150,
  ),
  Event(
    imageUrl: 'https://loremflickr.com/400/200/presentation,seminar?lock=8',
    name: 'Ponencia: Tolerancia a Fallos',
    category: 'Académicos',
    date: '02 Nov 2026',
    time: '04:00 PM',
    location: 'Auditorio Principal',
    availableSpots: 200,
  ),

  // Deportivos (3)
  Event(
    imageUrl: 'https://loremflickr.com/400/200/volleyball,sports?lock=9',
    name: 'Torneo Relámpago de Voleibol',
    category: 'Deportivos',
    date: '05 Nov 2026',
    time: '08:00 AM',
    location: 'Gimnasio Universitario',
    availableSpots: 48,
  ),
  Event(
    imageUrl: 'https://loremflickr.com/400/200/running,athletics?lock=10',
    name: 'Carrera Atlética 5K',
    category: 'Deportivos',
    date: '08 Nov 2026',
    time: '07:00 AM',
    location: 'Pista de Atletismo',
    availableSpots: 300,
  ),
  Event(
    imageUrl: 'https://loremflickr.com/400/200/swimming,pool?lock=11',
    name: 'Competencia Intercolegial de Natación',
    category: 'Deportivos',
    date: '10 Nov 2026',
    time: '11:00 AM',
    location: 'Centro Acuático',
    availableSpots: 100,
  ),

  // Culturales (3)
  Event(
    imageUrl: 'https://loremflickr.com/400/200/photography,gallery?lock=12',
    name: 'Exposición: Retoque Fotográfico Digital',
    category: 'Culturales',
    date: '12 Nov 2026',
    time: '05:00 PM',
    location: 'Galería de Arte',
    availableSpots: 70,
  ),
  Event(
    imageUrl: 'https://loremflickr.com/400/200/cinema,movie?lock=13',
    name: 'Muestra de Cortometrajes',
    category: 'Culturales',
    date: '15 Nov 2026',
    time: '06:00 PM',
    location: 'Sala Audiovisual',
    availableSpots: 90,
  ),
  Event(
    imageUrl: 'https://loremflickr.com/400/200/concert,music?lock=14',
    name: 'Festival de Música Universitaria',
    category: 'Culturales',
    date: '18 Nov 2026',
    time: '03:00 PM',
    location: 'Jardín Principal',
    availableSpots: 500,
  ),

  // Talleres (4)
  Event(
    imageUrl: 'https://loremflickr.com/400/200/python,coding?lock=15',
    name: 'Generación de Matrices en Python',
    category: 'Talleres',
    date: '20 Nov 2026',
    time: '09:00 AM',
    location: 'Laboratorio de Algoritmos',
    availableSpots: 25,
  ),
  Event(
    imageUrl: 'https://loremflickr.com/400/200/writing,document?lock=16',
    name: 'Introducción al Formato IEEE',
    category: 'Talleres',
    date: '22 Nov 2026',
    time: '02:00 PM',
    location: 'Biblioteca - Sala 3',
    availableSpots: 30,
  ),
  Event(
    imageUrl: 'https://loremflickr.com/400/200/design,interface?lock=17',
    name: 'Creación de Interfaces Responsivas',
    category: 'Talleres',
    date: '25 Nov 2026',
    time: '11:00 AM',
    location: 'Sala Mac',
    availableSpots: 20,
  ),
  Event(
    imageUrl: 'https://loremflickr.com/400/200/robotics,electronics?lock=18',
    name: 'Club de Robótica Básica',
    category: 'Talleres',
    date: '28 Nov 2026',
    time: '04:00 PM',
    location: 'Taller de Mecatrónica',
    availableSpots: 15,
  ),
];
