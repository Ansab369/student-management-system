import 'package:flutter/material.dart';
import 'package:school_management_system/core/constants.dart';
import 'package:school_management_system/presentation/teacher/widgets/question_widget.dart';


class OnlineExamScreen extends StatefulWidget {
  const OnlineExamScreen({super.key});

  _OnlineExamScreenState createState() => _OnlineExamScreenState();
}

class _OnlineExamScreenState extends State<OnlineExamScreen> {
  List<QuestionWidget> questionWidgets = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Online Exam"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 20.0,width: double.infinity,),
            Text(
              "Welcome, Teacher!",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20.0),
            Column(
              children: questionWidgets,
            ),
            ElevatedButton(
              onPressed: () {
                // Add a new question field
                addQuestionField();
              },
              child: Text("Add Question"),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                // Add a new question field
                showInfoMessage("Questions Submited");
              },
              child: Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }

  void addQuestionField() {
    setState(() {
      questionWidgets.add(QuestionWidget(questionNumber: questionWidgets.length + 1));
    });
  }
}
