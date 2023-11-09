// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:school_management_system/core/strings.dart';

class TimeTableScreen extends StatelessWidget {
  const TimeTableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Time Table"),
      ),
      body: ListView.builder(
        itemCount: timetableSlots.length,
        itemBuilder: (BuildContext context, int index) {
          TimetableSlot slot = timetableSlots[index];

          return Card(
            child: ListTile(
              title: Text(slot.subject),
              subtitle: Text(slot.teacher),
              leading: Text(slot.startTime.format(context)),
              trailing: Text(slot.endTime.format(context)),
            ),
          );
        },
      ),
    );
  }
}
