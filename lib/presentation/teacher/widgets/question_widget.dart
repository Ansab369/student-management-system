
import 'package:flutter/material.dart';

class QuestionWidget extends StatelessWidget {
  final int questionNumber;

  QuestionWidget({required this.questionNumber});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text("Q $questionNumber: "),
              SizedBox(width: 10),
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  hintText: "Enter the question",
                ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
