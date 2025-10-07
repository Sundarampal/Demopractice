import 'package:demopractice/startingpage.dart';
import 'package:demopractice/threepage.dart';
import 'package:demopractice/twopage.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main()  {
  runApp(MaterialApp(
    initialRoute: '/' ,
    routes: {
      '/' : (context) => Startingpage(),
      '/second': (context) => Twopage(),
      '/third': (context) => Threepage(),
    },
  ),
  );
}