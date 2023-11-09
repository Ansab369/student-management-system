import 'package:flutter/material.dart';

class HomeIconButtons extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;
  const HomeIconButtons({
    super.key,
    required this.title,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      decoration: BoxDecoration(
        color: color.withOpacity(0.3),
        borderRadius: BorderRadius.circular(13),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 40,
          ),
          SizedBox(height: 20),
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
          ),
        ],
      ),
    );
  }
}