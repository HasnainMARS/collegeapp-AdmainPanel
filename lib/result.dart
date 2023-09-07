
import 'package:flutter/material.dart';

import 'colorsceem.dart';

class ResultSec extends StatefulWidget {
  const ResultSec({super.key});

  @override
  State<ResultSec> createState() => _ResultSecState();
}

class _ResultSecState extends State<ResultSec> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         centerTitle: true,
        title: Text("Result"),
        backgroundColor: kpink,
        shadowColor: Colors.red,
      ),
    );
  }
}