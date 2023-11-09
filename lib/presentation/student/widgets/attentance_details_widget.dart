import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class AttentanceDetails extends StatelessWidget {
  const AttentanceDetails({
    super.key,
    required this.totalClasses,
    required this.attendedClasses,
  });

  final int totalClasses;
  final int attendedClasses;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.indigo.withOpacity(0.3),
        borderRadius: BorderRadius.circular(13),
      ),
      padding: EdgeInsets.all(15),
      child: Column(
        children: [
          SizedBox(height: 10),
          SizedBox(
            height: 130,
            child: CircularPercentIndicator(
              backgroundColor: Colors.white,
              radius: 60.0,
              lineWidth: 13.0,
              animation: true,
              percent: 0.7,
              center: Text(
                "70.0%",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              circularStrokeCap: CircularStrokeCap.round,
              progressColor: Colors.purple,
            ),
          ),
          Text(
            "Attendance Percentage",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
          ),
          SizedBox(height: 20),
          Text(
            'Total Classes: $totalClasses',
            style: TextStyle(fontSize: 18),
          ),
          Text(
            'Attended Classes: $attendedClasses',
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}