// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

//
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:school_management_system/core/colors.dart';
import 'package:school_management_system/presentation/student/edit_profile/edit_profile_screen.dart';
import 'package:school_management_system/presentation/student/fees_details/fees_screen.dart';
import 'package:school_management_system/presentation/student/test_exaam/exam_screen.dart';
import 'package:school_management_system/presentation/student/time_table/time_table_screen.dart';
import 'package:school_management_system/presentation/student/widgets/attentance_details_widget.dart';
import 'package:school_management_system/presentation/student/widgets/circular_dot.dart';
import 'package:school_management_system/presentation/student/widgets/home_icon_buttons.dart';
import 'package:school_management_system/presentation/student/widgets/profile_widget.dart';

class StudentDashboard extends StatelessWidget {
  final String studentName = "John Doe"; // Replace with the student's name
  final int totalClasses = 30; // Replace with the total number of classes
  final int attendedClasses = 25;

  const StudentDashboard(
      {super.key}); // Replace with the number of classes attended

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
                'Welcome 👋',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => EditProfileScreen(),
                    ));
                  },
                  child: ProfileWidget(studentName: studentName)),
              SizedBox(height: 10),
              AttentanceDetails(
                  totalClasses: totalClasses, attendedClasses: attendedClasses),
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => TimeTableScreen(),
                        ));
                      },
                      child: HomeIconButtons(
                        title: 'Time Table',
                        icon: Icons.av_timer_rounded,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ExamScreen(),
                        ));
                      },
                      child: HomeIconButtons(
                        title: 'Exam',
                        icon: Icons.edit_document,
                        color: Colors.green,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        //! nav
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => StudentFeesScreen(),
                        ));
                      },
                      child: HomeIconButtons(
                        title: 'Fees',
                        icon: Icons.attach_money_rounded,
                        color: Colors.orange,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                "Syllabus Track",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
              ),
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.pink.withOpacity(0.07),
                  borderRadius: BorderRadius.circular(13),
                ),
                child: Row(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        CircularPercentIndicator(
                          radius: 50.0,
                          lineWidth: 5.0,
                          percent: 0.5,
                          progressColor: Color.fromARGB(255, 107, 120, 59),
                        ),
                        CircularPercentIndicator(
                          radius: 70.0,
                          lineWidth: 5.0,
                          percent: 0.8,
                          progressColor:
                              const Color.fromARGB(255, 233, 30, 159),
                        ),
                        CircularPercentIndicator(
                          radius: 60.0,
                          lineWidth: 5.0,
                          percent: 0.75,
                          center: Text(
                            "Total : 75%",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          progressColor: Color.fromARGB(255, 65, 58, 7),
                        ),
                      ],
                    ),
                    SizedBox(width: 40),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListItem(
                          dotColor: dotColors[0],
                          text: 'Chemistry',
                        ),
                        ListItem(
                          dotColor: dotColors[1],
                          text: 'Physics',
                        ),
                        ListItem(
                          dotColor: dotColors[2],
                          text: 'Maths',
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
