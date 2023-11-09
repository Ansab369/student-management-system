// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:school_management_system/core/strings.dart';
import 'package:school_management_system/presentation/teacher/widgets/assign_home_work.dart';
import 'package:school_management_system/presentation/teacher/widgets/expandable_container.dart';

class HomeworkCheckingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homework Checking"),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => HomeworkAssignmentScreen(),
                ));
              },
              child: Text("Assign"))
        ],
      ),
      body: Column(
        children: <Widget>[
          // List of assigned homework tasks to check
          Expanded(
            child: ListView.builder(
              itemCount: 4, // Replace with the number of assigned tasks
              itemBuilder: (BuildContext context, int index) {
                // Replace with your homework checking widget
                return ExpandableContainer(
                    child: Text(
                      'Student ${index + 1}',
                      style: dataStyle,
                    ),
                    expandedChild: Text(
                        '      ${index + 1} Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque nec velit id elit convallis egestas. Proin sed euismod elit. Vestibulum euismod diam vel quam tincidunt, ac egestas neque hendrerit. \n                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque nec velit id elit convallis egestas. Proin sed euismod elit. Vestibulum euismod diam vel quam tincidunt, ac egestas neque hendrerit.'),
                    imageUrl: "image${index + 1}.jpeg");
              },
            ),
          ),
        ],
      ),
    );
  }
}



//!
