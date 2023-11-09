import 'package:flutter/material.dart';

class HomeworkAssignmentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homework Assignment"),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(labelText: "Enter homework task"),
              // Handle user input for the homework task
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Create and assign the homework task
              // You can store it in a list or database
            },
            child: Text("Assign Homework"),
          ),
        ],
      ),
    );
  }
}