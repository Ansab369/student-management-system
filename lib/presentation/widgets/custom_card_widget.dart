
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color randomColor;
  final VoidCallback? onTap;

  CustomCard(
      {required this.text, required this.icon, required this.randomColor, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(15),
        height: 80,
        decoration: BoxDecoration(
          color: randomColor.withOpacity(0.4),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            SizedBox(width: 10),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: randomColor.withOpacity(0.4),
                borderRadius: BorderRadius.circular(13),
              ),
              child: Icon(
                icon,
                color: Colors.black,
              ),
            ),
            SizedBox(width: 10),
            Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black87,
              ),
            ),
            Spacer(),
            Icon(Icons.arrow_forward),
            SizedBox(width: 10),
          ],
        ),
      ),
    );
  }
}
