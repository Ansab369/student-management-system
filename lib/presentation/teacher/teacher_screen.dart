// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:school_management_system/presentation/teacher/attentance_marking/attentance_marking_screen.dart';
import 'package:school_management_system/presentation/teacher/chat_with_parents/chat_with_parents.dart';
import 'package:school_management_system/presentation/teacher/homework/homework_screen.dart';
import 'package:school_management_system/presentation/teacher/leave_management/leave_management_screen.dart';
import 'package:school_management_system/presentation/teacher/online_exam/online_exam_screen.dart';
import 'package:school_management_system/presentation/teacher/study_materials/study_materials_screen.dart';
import 'package:school_management_system/presentation/widgets/custom_card_widget.dart';

class TeacherScreen extends StatelessWidget {
  const TeacherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Manage Class"),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // ! notifications
            },
          ),
        ],
      ),
      body: Column(
        children: [
          CustomCard(
            text: "Students Attendance",
            icon: Icons.access_time_filled_sharp,
            randomColor: Colors.red,
            onTap:(){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => AttendanceScreen(),));
            }
          ),
          CustomCard(
            text: "Leave Management",
            icon: Icons.sick,
            randomColor: Colors.blue,
            onTap:(){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => LeaveManagementScreen(),));
            }
          ),
          CustomCard(
            text: "HomeWork",
            icon: Icons.work,
            randomColor: Colors.indigo,
            onTap:(){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeworkCheckingScreen(),));
            }
          ),
          CustomCard(
            text: "Online Exam",
            icon: Icons.pentagon,
            randomColor: Colors.orange,
            onTap:(){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => OnlineExamScreen(),));
            }
          ),
          CustomCard(
            text: "Chat With Parents",
            icon: Icons.chat,
            randomColor: Colors.green,
            onTap:(){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => ChatWithParentsScreen(),));
            }
          ),
          CustomCard(
            text: "Study Materials",
            icon: Icons.book,
            randomColor: Colors.blue,
            onTap:(){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => StudyMaterialsScreen(),));
            }
          ),
        ],
      ),
    );
  }
  
}

//


// card
