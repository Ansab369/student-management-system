
import 'package:flutter/material.dart';



class ListItem extends StatelessWidget {
  final Color dotColor;
  final String text;

  ListItem({
    required this.dotColor,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: CircularDot(
            size: 10.0, // Adjust the size of the dot
            color: dotColor, // Change the color of the dot
          ),
        ),
        Text(text),
      ],
    );
  }
}

class CircularDot extends StatelessWidget {
  final double size;
  final Color color;

  CircularDot({
    required this.size,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
    );
  }
}







//!
