// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:school_management_system/presentation/teacher/leave_management/widgets/leave_widget.dart';

class LeaveManagementScreen extends StatelessWidget {
  LeaveManagementScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Attendance Marking'),
      ),
      body: Column(
        children: [
          // attentance details container
          SizedBox(height: 10),

          LeaveMainWidget(date: "09-02-2023", name: "Messi", reason: "Fever"),
          LeaveMainWidget(
              date: "23-19-2023", name: "Ronaldo", reason: "matcch"),
          LeaveMainWidget(date: "11-02-2023", name: "Embappe", reason: "injury")
        ],
      ),
    );
  }
}
