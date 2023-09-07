import 'package:admanpanal/colorsceem.dart';
import 'package:flutter/material.dart';

class Studentsec extends StatefulWidget {
  const Studentsec({super.key});

  @override
  State<Studentsec> createState() => _StudentsecState();
}

class _StudentsecState extends State<Studentsec> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
         centerTitle: true,
        title: const Text("Studet"),
        backgroundColor: kpink,
        shadowColor: Colors.red,
      ),
    );
  }
}