// ignore_for_file: avoid_print, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:school_management_system/core/strings.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  String name = "John Doe";
  String email = "JohnDoe@email.com";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.blue,
          ),
        ),
        centerTitle: true,
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.blue),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.person_rounded,
                    size: 90,
                  ),
                  SizedBox(width: 40),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        email,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 16.0),
              Text(
                'Change Details',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    labelText: 'Name'),
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: phoneController,
                // initialValue: _phone,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    labelText: 'Email Address'),
                // onChanged: (value) {},
              ),
              SizedBox(height: 16.0),
              TextButton(
                style: mainButtonStyle,
                onPressed: () {
                  if (nameController.text != "") {
                    setState(() {
                      name = nameController.text;
                    });
                  }
                  if (phoneController.text != "") {
                    setState(() {
                      email = phoneController.text;
                    });
                  }
                },
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Save',
                    style: TextStyle(fontSize: 19),
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

// todo change avathar