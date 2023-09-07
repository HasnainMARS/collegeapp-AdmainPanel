
import 'package:flutter/material.dart';

import 'colorsceem.dart';

class attandance extends StatefulWidget {
  const attandance({super.key});

  @override
  State<attandance> createState() => _attandanceState();
}

class _attandanceState extends State<attandance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         centerTitle: true,
        title: Text("Attandance"),
        backgroundColor: kpink,
        shadowColor: Colors.red,
      ),
    );
  }
}