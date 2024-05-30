import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class ProgramPage extends StatefulWidget {
  const ProgramPage({Key? key}) : super(key: key);

  @override
  State<ProgramPage> createState() => _ProgramPageState();
}

class _ProgramPageState extends State<ProgramPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SfCalendar(
        view: CalendarView.week,
        dataSource: _getCalendarDataSource(),
        timeSlotViewSettings: const TimeSlotViewSettings(
          startHour: 7, // 7:00 AM
          endHour: 19, // 7:00 PM
          nonWorkingDays: <int>[DateTime.saturday, DateTime.sunday],
          timeIntervalHeight: 60,
        ),
      ),
    );
  }
}

class AppointmentData {
  final DateTime startTime;
  final DateTime endTime;
  final String subject;
  final Color color;
  final String professor;
  final String room;
  final String field;

  AppointmentData({
    required this.startTime,
    required this.endTime,
    required this.subject,
    required this.color,
    required this.professor,
    required this.room,
    required this.field,
  });
}

class DataSource extends CalendarDataSource {
  DataSource(List<AppointmentData> source) {
    appointments = source.map((appointment) {
      return Appointment(
        startTime: appointment.startTime,
        endTime: appointment.endTime,
        subject: '${appointment.subject}\nProf: ${appointment.professor}\nSalle: ${appointment.room}\nFilière: ${appointment.field}',
        color: appointment.color,
      );
    }).toList();
  }
}

DataSource _getCalendarDataSource() {
  List<AppointmentData> appointments = <AppointmentData>[
    AppointmentData(
      startTime: DateTime(2024, 4, 15, 8, 30, 0),
      endTime: DateTime(2024, 4, 15, 12, 30, 0),
      subject: 'PHP Avancée',
      color: Colors.pink,
      professor: 'Professeur X',
      room: 'Salle A',
      field: 'Informatique',
    ),
    AppointmentData(
      startTime: DateTime(2024, 4, 15, 14, 0, 0),
      endTime: DateTime(2024, 4, 15, 18, 0, 0),
      subject: 'Oracle',
      color: Colors.yellow,
      professor: 'Professeur Y',
      room: 'Salle B',
      field: 'Base de données',
    ),
    AppointmentData(
      startTime: DateTime(2024, 4, 16, 8, 30, 0),
      endTime: DateTime(2024, 4, 16, 12, 30, 0),
      subject: 'Espagnol',
      color: Colors.purple,
      professor: 'Professeur Z',
      room: 'Salle C',
      field: 'Langues',
    ),
    AppointmentData(
      startTime: DateTime(2024, 4, 16, 14, 0, 0),
      endTime: DateTime(2024, 4, 16, 18, 0, 0),
      subject: 'Blockchain Technologies',
      color: Colors.teal,
      professor: 'Professeur W',
      room: 'Salle D',
      field: 'Technologies',
    ),
    AppointmentData(
      startTime: DateTime(2024, 4, 19, 8, 30, 0),
      endTime: DateTime(2024, 4, 19, 12, 30, 0),
      subject: 'Mobile Hybride',
      color: Colors.red,
      professor: 'Zakariae ALAMI MEROUNI',
      room: 'Salle B2 2.13',
      field: 'Développement mobile hybride',
    ),
    // Matières ajoutées du 21 au 24 mai
    AppointmentData(
      startTime: DateTime(2024, 5, 21, 9, 0, 0),
      endTime: DateTime(2024, 5, 21, 11, 0, 0),
      subject: 'Développement Android',
      color: Colors.blue,
      professor: 'Professeur A',
      room: 'Salle E',
      field: 'Développement Mobile',
    ),
    AppointmentData(
      startTime: DateTime(2024, 5, 21, 11, 30, 0),
      endTime: DateTime(2024, 5, 21, 13, 30, 0),
      subject: 'Développement iOS',
      color: Colors.green,
      professor: 'Professeur B',
      room: 'Salle F',
      field: 'Développement Mobile',
    ),
    AppointmentData(
      startTime: DateTime(2024, 5, 21, 14, 0, 0),
      endTime: DateTime(2024, 5, 21, 16, 0, 0),
      subject: 'Flutter Avancé',
      color: Colors.orange,
      professor: 'Professeur C',
      room: 'Salle G',
      field: 'Développement Mobile',
    ),
    AppointmentData(
      startTime: DateTime(2024, 5, 22, 9, 0, 0),
      endTime: DateTime(2024, 5, 22, 11, 0, 0),
      subject: 'Sécurité Informatique',
      color: Colors.cyan,
      professor: 'Professeur D',
      room: 'Salle H',
      field: 'Informatique',
    ),
    AppointmentData(
      startTime: DateTime(2024, 5, 22, 11, 30, 0),
      endTime: DateTime(2024, 5, 22, 13, 30, 0),
      subject: 'Réseaux Informatiques',
      color: Colors.brown,
      professor: 'Professeur E',
      room: 'Salle I',
      field: 'Informatique',
    ),
    AppointmentData(
      startTime: DateTime(2024, 5, 22, 14, 0, 0),
      endTime: DateTime(2024, 5, 22, 16, 0, 0),
      subject: 'Intelligence Artificielle',
      color: Colors.purple,
      professor: 'Professeur F',
      room: 'Salle J',
      field: 'Informatique',
    ),
    AppointmentData(
      startTime: DateTime(2024, 5, 23, 9, 0, 0),
      endTime: DateTime(2024, 5, 23, 11, 0, 0),
      subject: 'Applications Web',
      color: Colors.indigo,
      professor: 'Professeur G',
      room: 'Salle K',
      field: 'Informatique',
    ),
    AppointmentData(
      startTime: DateTime(2024, 5, 23, 11, 30, 0),
      endTime: DateTime(2024, 5, 23, 13, 30, 0),
      subject: 'Bases de Données',
      color: Colors.lime,
      professor: 'Professeur H',
      room: 'Salle L',
      field: 'Informatique',
    ),
    AppointmentData(
      startTime: DateTime(2024, 5, 23, 14, 0, 0),
      endTime: DateTime(2024, 5, 23, 16, 0, 0),
      subject: 'Programmation C++',
      color: Colors.grey,
      professor: 'Professeur I',
      room: 'Salle M',
      field: 'Informatique',
    ),
    AppointmentData(
      startTime: DateTime(2024, 5, 24, 9, 0, 0),
      endTime: DateTime(2024, 5, 24, 11, 0, 0),
      subject: 'Développement Web',
      color: Colors.amber,
      professor: 'Professeur J',
      room: 'Salle N',
      field: 'Informatique',
    ),
    AppointmentData(
      startTime: DateTime(2024, 5, 24, 11, 30, 0),
      endTime: DateTime(2024, 5, 24, 13, 30, 0),
      subject: 'Architecture Logicielle',
      color: Colors.deepOrange,
      professor: 'Professeur K',
      room: 'Salle O',
      field: 'Informatique',
    ),
    AppointmentData(
      startTime: DateTime(2024, 5, 24, 14, 0, 0),
      endTime: DateTime(2024, 5, 24, 16, 0, 0),
      subject: 'Projet Mobile',
      color: Colors.deepPurple,
      professor: 'Professeur L',
      room: 'Salle P',
      field: 'Développement Mobile',
    ),

    //-----------------------
    AppointmentData(
      startTime: DateTime(2024, 5, 27, 9, 0, 0),
      endTime: DateTime(2024, 5, 27, 11, 0, 0),
      subject: 'Développement Android',
      color: Colors.blue,
      professor: 'Professeur A',
      room: 'Salle E',
      field: 'Développement Mobile',
    ),
    AppointmentData(
      startTime: DateTime(2024, 5, 27, 11, 30, 0),
      endTime: DateTime(2024, 5, 27, 13, 30, 0),
      subject: 'Développement iOS',
      color: Colors.green,
      professor: 'Professeur B',
      room: 'Salle F',
      field: 'Développement Mobile',
    ),
    AppointmentData(
      startTime: DateTime(2024, 5, 27, 14, 0, 0),
      endTime: DateTime(2024, 5, 27, 16, 0, 0),
      subject: 'Flutter Avancé',
      color: Colors.orange,
      professor: 'Professeur C',
      room: 'Salle G',
      field: 'Développement Mobile',
    ),
    AppointmentData(
      startTime: DateTime(2024, 5, 28, 9, 0, 0),
      endTime: DateTime(2024, 5, 28, 11, 0, 0),
      subject: 'Sécurité Informatique',
      color: Colors.cyan,
      professor: 'Professeur D',
      room: 'Salle H',
      field: 'Informatique',
    ),
    AppointmentData(
      startTime: DateTime(2024, 5, 28, 11, 30, 0),
      endTime: DateTime(2024, 5, 28, 13, 30, 0),
      subject: 'Réseaux Informatiques',
      color: Colors.brown,
      professor: 'Professeur E',
      room: 'Salle I',
      field: 'Informatique',
    ),
    AppointmentData(
      startTime: DateTime(2024, 5, 28, 14, 0, 0),
      endTime: DateTime(2024, 5, 28, 16, 0, 0),
      subject: 'Intelligence Artificielle',
      color: Colors.purple,
      professor: 'Professeur F',
      room: 'Salle J',
      field: 'Informatique',
    ),
    AppointmentData(
      startTime: DateTime(2024, 5, 29, 9, 0, 0),
      endTime: DateTime(2024, 5, 29, 11, 0, 0),
      subject: 'Applications Web',
      color: Colors.indigo,
      professor: 'Professeur G',
      room: 'Salle K',
      field: 'Informatique',
    ),
    AppointmentData(
      startTime: DateTime(2024, 5, 29, 11, 30, 0),
      endTime: DateTime(2024, 5, 29, 13, 30, 0),
      subject: 'Bases de Données',
      color: Colors.lime,
      professor: 'Professeur H',
      room: 'Salle L',
      field: 'Informatique',
    ),
    AppointmentData(
      startTime: DateTime(2024, 5, 29, 14, 0, 0),
      endTime: DateTime(2024, 5, 29, 16, 0, 0),
      subject: 'Programmation C++',
      color: Colors.grey,
      professor: 'Professeur I',
      room: 'Salle M',
      field: 'Informatique',
    ),
    AppointmentData(
      startTime: DateTime(2024, 5, 30, 9, 0, 0),
      endTime: DateTime(2024, 5, 30, 11, 0, 0),
      subject: 'Développement Web',
      color: Colors.amber,
      professor: 'Professeur J',
      room: 'Salle N',
      field: 'Informatique',
    ),
    AppointmentData(
      startTime: DateTime(2024, 5, 30, 11, 30, 0),
      endTime: DateTime(2024, 5, 30, 13, 30, 0),
      subject: 'Architecture Logicielle',
      color: Colors.deepOrange,
      professor: 'Professeur K',
      room: 'Salle O',
      field: 'Informatique',
    ),
    AppointmentData(
      startTime: DateTime(2024, 5, 30, 14, 0, 0),
      endTime: DateTime(2024, 5, 30, 16, 0, 0),
      subject: 'Projet Mobile',
      color: Colors.deepPurple,
      professor: 'Professeur L',
      room: 'Salle P',
      field: 'Développement Mobile',
    ),

  ];

  return DataSource(appointments);
}
