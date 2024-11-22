import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

//Name: Elaf Chatin Khalid   Matric NO.: QU212SECJ005
//Name: Aya Nawzad Abdulbaqi Matric NO.: QU212SECJ002
//Video Link: ' https://youtu.be/fuqwy6gXHpk?si=BWu66irNSpw8tD1h '
//Exercise2
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exercise 2',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}
