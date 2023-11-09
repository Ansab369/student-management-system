// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:school_management_system/core/constants.dart';
import 'package:school_management_system/presentation/parents/parents_screen.dart';
import 'package:school_management_system/presentation/student/student_screen.dart';
import 'package:school_management_system/presentation/teacher/teacher_screen.dart';

class AuthenticationScreen extends StatefulWidget {
  const AuthenticationScreen({super.key});

  @override
  State<AuthenticationScreen> createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController userNameController = TextEditingController();

  bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              Center(
                child: Text(
                  "SMS",
                  style: TextStyle(
                      color: Color(0xff6e509e),
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
              ),
              SizedBox(height: 60),
              Text(
                "SignIn Account ",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "Enter Your UserName And Password",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 70),
              Container(
                margin: EdgeInsets.only(right: 20),
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.person_2_rounded),
                      SizedBox(width: 10),
                      SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          controller: userNameController,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Enter your username',
                          ),
                          keyboardType: TextInputType.name,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.only(right: 20),
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.lock),
                      SizedBox(width: 20),
                      Expanded(
                        child: TextField(
                          controller: passwordController,
                          obscureText: _obscureText,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Enter Password',
                          ),
                          keyboardType: TextInputType.name,
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          _obscureText
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                        onPressed: _togglePasswordVisibility,
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(right: 20, top: 50),
                child: ElevatedButton(
                  onPressed: () {
                    // todo : check the type of user
                    // Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => TeacherScreen()), (route) => false);
                    // Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => StudentDashboard()), (route) => false);
                    // Navigator.of(context).pushAndRemoveUntil( MaterialPageRoute(builder: (context) => ParentsDashboard()), (route) => false);

                        if (userNameController.text =="student" && passwordController.text=="student" ) {
                          Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => StudentDashboard()), (route) => false);
                        }else if(userNameController.text =="teacher" && passwordController.text=="teacher" ){

                         Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => TeacherScreen()), (route) => false);
                        }else if(userNameController.text =="parent" && passwordController.text=="parent" ){
                          Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                            builder: (context) => ParentsDashboard()),
                        (route) => false);
                        }else{
                          showErrorMessage("Enter UserName & Password");
                        }
                  },
                  child: Text(
                    'Submit',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff6e509e),
                    minimumSize: Size(MediaQuery.of(context).size.width, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
