import 'package:flutter/material.dart';
import 'package:doan_ltdd/screen/branch.dart';
import 'package:doan_ltdd/screen/login.dart';
import 'package:doan_ltdd/screen/winner.dart';
import 'package:doan_ltdd/screen/lose.dart';
import 'package:doan_ltdd/screen/quetions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Branch(),
    );
  }
}
