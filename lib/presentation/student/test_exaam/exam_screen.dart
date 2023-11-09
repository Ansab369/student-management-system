// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:school_management_system/core/constants.dart';

class ExamScreen extends StatefulWidget {
  @override
  _ExamScreenState createState() => _ExamScreenState();
}

class _ExamScreenState extends State<ExamScreen> {
  TextEditingController answerController = TextEditingController();
  // Create a list of questions.
  final List<Question> _questions = [
    Question(
      questionNumber: 1,
      questionText: 'What is the capital of France?',
      answerText: 'Paris',
    ),
    Question(
      questionNumber: 2,
      questionText: 'What is the largest ocean in the world?',
      answerText: 'Pacific Ocean',
    ),
    Question(
      questionNumber: 1,
      questionText: 'What is the capital of France?',
      answerText: 'Paris',
    ),
    Question(
      questionNumber: 2,
      questionText: 'What is the largest ocean in the world?',
      answerText: 'Pacific Ocean',
    ),
    // ...
  ];

  // Keep track of the current question number.
  int _currentQuestionNumber = 0;

  // Show the next question.
  void _nextQuestion() {
    answerController.clear();
    if (_currentQuestionNumber < _questions.length - 1) {
      setState(() {
        _currentQuestionNumber++;
      });
    }
    if (_currentQuestionNumber >= _questions.length - 1) {
      showErrorMessage("Answers Submited");
      Navigator.pop(context);
    }
  }

  // Check the user's answer.
  void _checkAnswer(String answer) {
    if (answer == _questions[_currentQuestionNumber].answerText) {
      // Correct answer!
    } else {
      // Incorrect answer!
    }
  }

  // Build the quiz screen.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test Exam'),
      ),
      body: Column(
        children: [
          // Show the current question number.
          Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.indigo.withOpacity(0.3),
                borderRadius: BorderRadius.circular(13),
              ),
              child: Text(
                  'Question ${_currentQuestionNumber + 1} of ${_questions.length}')),
          SizedBox(height: 20),
          // Show the current question.
          Text(
            _questions[_currentQuestionNumber].questionText,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 40),

          // Show the answer enter field.

          Container(
            margin: EdgeInsets.only(right: 20, left: 20),
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
            ),
            child: TextField(
              controller: answerController,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Answer',
              ),
              onChanged: (answer) {
                _checkAnswer(answer);
              },
            ),
          ),
          SizedBox(height: 40),

          // Show the next button.
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton(
              onPressed: _nextQuestion,
              child: Text(
                _currentQuestionNumber + 1 == _questions.length
                    ? 'Submit'
                    : 'Next',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigo,
                minimumSize: Size(MediaQuery.of(context).size.width, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// A class to represent a question.
class Question {
  final int questionNumber;
  final String questionText;
  final String answerText;

  Question({
    required this.questionNumber,
    required this.questionText,
    required this.answerText,
  });
}
