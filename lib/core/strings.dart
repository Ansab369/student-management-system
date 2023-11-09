import 'package:flutter/material.dart';
import 'package:school_management_system/models/chat_model.dart';
import 'package:school_management_system/presentation/teacher/chat_with_parents/chat_with_parents.dart';

const dataStyle= TextStyle(
  color: Colors.black,
  fontSize: 18

);
const studentsFontSize= TextStyle(
  color: Colors.black,
  fontSize: 16

);

// filled Button Style
final mainButtonStyle = TextButton.styleFrom(
  minimumSize: const Size(double.infinity, 40),
  foregroundColor: Colors.white,
  backgroundColor: Colors.indigo,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
  ),
);






// ! time table

 List<TimetableSlot> timetableSlots = [
    TimetableSlot(
      dayOfWeek: 'Monday',
      startTime: TimeOfDay(hour: 9, minute: 0),
      endTime: TimeOfDay(hour: 10, minute: 0),
      subject: 'Math',
      teacher: 'Mr. Smith',
    ),
    TimetableSlot(
      dayOfWeek: 'Monday',
      startTime: TimeOfDay(hour: 10, minute: 0),
      endTime: TimeOfDay(hour: 11, minute: 0),
      subject: 'English',
      teacher: 'Mrs. Jones',
    ),
   
    TimetableSlot(
      dayOfWeek: 'Monday',
      startTime: TimeOfDay(hour: 12, minute: 0),
      endTime: TimeOfDay(hour: 01, minute: 0),
      subject: 'English',
      teacher: 'Mrs. Jones',
    ),
     TimetableSlot(
      dayOfWeek: 'Monday',
      startTime: TimeOfDay(hour: 02, minute: 0),
      endTime: TimeOfDay(hour: 03, minute: 0),
      subject: 'English',
      teacher: 'Mrs. Dain',
    ),
   
  ];

  class TimetableSlot {
  final String dayOfWeek;
  final TimeOfDay startTime;
  final TimeOfDay endTime;
  final String subject;
  final String teacher;

  TimetableSlot({
    required this.dayOfWeek,
   required this.startTime,
   required this.endTime,
   required this.subject,
   required this.teacher,
  });
}





List<Chat> chatsList = [
  Chat(
    name: 'Neha',
    lastMessage: 'hi,...',
    avatar:
        'assets/userImages/image1.jpeg',
    time: '10:20 am',
  ),
  Chat(
    name: 'fiza',
    lastMessage: 'is everthing ok?',
    avatar:
        'assets/userImages/image2.jpeg',
    time: '11:20 am',
    count: 2,
  ),
  Chat(
    name: 'Jeff  Bessoz',
    lastMessage: 'yes here.',
    avatar:
        'assets/userImages/image1.jpegg',
    time: '2:20 pm',
    count: 1,
  ),
  Chat(
    name: 'Musk',
    lastMessage: 'ok',
    avatar:
        'assets/userImages/image4.jpeg',
    time: '4:40 pm',
  ),
 
 
];
