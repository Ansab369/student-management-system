import 'package:flutter/material.dart';

class StudentFeesScreen extends StatefulWidget {
  @override
  _StudentFeesScreenState createState() => _StudentFeesScreenState();
}

class _StudentFeesScreenState extends State<StudentFeesScreen> {
  // list of fees details for each term.
  List<FeesDetail> _feesDetails = [
    FeesDetail(term: 'Term 1', amount: 33333.33),
    FeesDetail(term: 'Term 2', amount: 33333.33),
    FeesDetail(term: 'Term 3', amount: 33333.33),
  ];

  // Build the student fees screen.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Fees'),
      ),
      body: ListView.builder(
        itemCount: _feesDetails.length,
        itemBuilder: (BuildContext context, int index) {
          FeesDetail detail = _feesDetails[index];

          return Card(
            color:Colors.indigo.shade100,
            child: ListTile(
              title: Text(detail.term),
              subtitle: Text('${detail.amount.toStringAsFixed(2)}'),
            ),
          );
        },
      ),
    );
  }
}

// A class to represent a fees detail.
class FeesDetail {
  final String term;
  final double amount;

  FeesDetail({
  required  this.term,
 required   this.amount,
  });
}
