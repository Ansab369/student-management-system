// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_management_system/core/strings.dart';
import 'package:school_management_system/provider/teacher_provider/teacher_provider.dart';

class AttendanceScreen extends StatelessWidget {
  AttendanceScreen({super.key});
  @override
  Widget build(BuildContext context) {
    TeacherProvider teacherProvider = Provider.of<TeacherProvider>(context);
    teacherProvider.getTodaysDate();
    return Scaffold(
      appBar: AppBar(
        title: Text('Attendance Marking'),
      ),
      body: Column(
        children: [
          // attentance details container
          SizedBox(height: 10),

          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.indigo.withOpacity(0.3),
              borderRadius: BorderRadius.circular(13),
            ),
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("DATE : ${teacherProvider.formattedDate}",
                    style: dataStyle),
                SizedBox(height: 10),
                Text("TOTAL STUDENTS : ${teacherProvider.students.length} "),
                SizedBox(height: 5),
                Text(
                    "ATTENTANCE : ${teacherProvider.attendance.where((value) => value).length} "),
              ],
            ),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: teacherProvider.students.length,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.indigo.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                  child: Row(
                    children: [
                      SizedBox(width: 10),
                      Text(teacherProvider.students[index],
                          style: studentsFontSize),
                      Spacer(),
                      Checkbox(
                        value: teacherProvider.attendance[index],
                        onChanged: (value) {
                          teacherProvider.addAttent(index, value);
                          // setState(() {
                          //  teacherProvider. attendance[index] = value!;
                          // });
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // submit attentance
        },
        child: Icon(Icons.check),
      ),
    );
  }
}



// todo : add date , total students , attents count
