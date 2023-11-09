// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_management_system/presentation/splash/splash_screen.dart';
import 'package:school_management_system/provider/teacher_provider/teacher_provider.dart';

void main() {
  // Initialize WidgetsFlutterBinding.
  WidgetsFlutterBinding.ensureInitialized();

  // Run the MyApp widget.
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Use MultiProvider to provide the TeacherProvider to the app.
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => TeacherProvider()),
      ],
      child: MaterialApp(
        // Disable the debug show checked mode banner.
        debugShowCheckedModeBanner: false,

        // Set the theme to use deep purple as the seed color.
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),

        // Set the home page to the SplashScreen.
        home: SplashScreen(),
      ),
    );
  }
}
