import 'package:flutter/material.dart';
import 'Login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task Manager App',
      theme: ThemeData(
        primarySwatch: Colors.indigo,primaryColor: Colors.indigo,
        useMaterial3: true,),
      home: LoginScreen(),
    );
  }
}

