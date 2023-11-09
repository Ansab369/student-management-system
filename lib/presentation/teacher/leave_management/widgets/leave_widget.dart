
import 'package:flutter/material.dart';
import 'package:school_management_system/core/strings.dart';

class LeaveMainWidget extends StatelessWidget {
  final String date;
  final String name;
  final String reason;
  const LeaveMainWidget({
    super.key,
    required this.date,
    required this.name,
    required this.reason,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("DATE : ${date} ", style: dataStyle),
                  SizedBox(height: 10),
                  Text("Name : ${name}  "),
                  SizedBox(height: 5),
                  Text("Reason : ${reason}"),
                ],
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () {
                  // isAccept=!isAccept;
                },
                child: Text("Accept"),
              )
            ],
          ),
        ],
      ),
    );
  }
}



// todo : add date , total students , attents count
