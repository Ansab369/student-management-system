import 'package:flutter/material.dart';

class StudyMaterialsScreen extends StatelessWidget {
   StudyMaterialsScreen({super.key});
  List<StudyMaterial> materials = [StudyMaterial(title: "HOLI,", description: "Get here Holi Festival Essay, Speech and Messages for everyone. Holi is the most vibrant festival of our country. Holi is celebrated in the month of Phalguna of Hindu calendar. It signifies the coming of spring and harvest season in the country. People celebrate the festival of colours by smearing each other with  gulal. Holi being the festival of love embarks coming of new season of year spreading colors to our lives. It reminds", filePath: "filePath")]; // Store the list of study materials.


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teacher Materials'),
      ),
      body: StudyMaterialList(materials: materials),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Implement a function to add new study materials and update the 'materials' list.
        },
        child: Icon(Icons.add),
      ),
    );
}
}


class StudyMaterial {
  final String title;
  final String description;
  final String filePath;

  StudyMaterial({required this.title, required this.description, required this.filePath});
}



class StudyMaterialList extends StatelessWidget {
  final List<StudyMaterial> materials;

  StudyMaterialList({required this.materials});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: materials.length,
      itemBuilder: (context, index) {
        final material = materials[index];
        return ListTile(
          title: Text(material.title),
          subtitle: Text(material.description),
          onTap: () {
            // Implement what happens when a user taps on a study material.
            // You could open the material or perform other actions here.
          },
        );
      },
    );
  }
}



