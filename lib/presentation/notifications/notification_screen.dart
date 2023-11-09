// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:school_management_system/core/strings.dart';

class NotoficationScreen extends StatelessWidget {
  const NotoficationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications"),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.indigo.withOpacity(0.3),
              borderRadius: BorderRadius.circular(13),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Parents Meeting..",style: studentsFontSize,),
                SizedBox(height: 5),
                Text("Principle announced class parents meeting for\nprepare next anuel examination.\nevery parent should attent")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
