import 'package:flutter/material.dart';

class TeacherProvider with ChangeNotifier {
  List<String> students = [
    'Student 1',
    'Student 2',
    'Student 3',
    'Student 4',
    'Student 5',
  ];

  List<bool> attendance = List.generate(5, (index) => false);
  // int trueValuesCount = attendance.where((value) => value).length;


  int totalStudentsCount = 0;
  addAttent(index, value) {
    attendance[index] = value!;
    notifyListeners();
  }

  String formattedDate="";

   getTodaysDate() {
  DateTime today = DateTime.now();
   formattedDate = "${today.day}-${today.month}-${today.year}";
}


}
