import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
    super.key,
    required this.studentName,
  });

  final String studentName;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.indigo.withOpacity(0.3),
        borderRadius: BorderRadius.circular(13),
      ),
      child: Row(
        children: [
          SizedBox(width: 10),
          ClipOval(
            child: Image.asset(
              "assets/userImages/image4.jpeg",
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 15),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '$studentName',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text("12th stanterd"),
            ],
          ),
          Spacer(),
          Icon(Icons.mode_edit_outline),
          SizedBox(width: 15),
        ],
      ),
    );
  }
}