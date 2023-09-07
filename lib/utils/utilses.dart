

import 'package:admanpanal/colorsceem.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Utils{

void toestMessage(
  String message
){
  Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: kpink,
        textColor: Colors.white,
        fontSize: 16.0
    );
}
}