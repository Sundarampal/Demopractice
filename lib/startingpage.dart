import 'dart:convert' as convert;
import 'package:demopractice/Utilities.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Startingpage extends StatefulWidget {
  const Startingpage({super.key});

  @override
  State<Startingpage> createState() => _StartingpageState();
}

class _StartingpageState extends State<Startingpage> {
  List<String> subjects = [];
  String notice = 'Loading subjects...';

  @override
  void initState() {
    super.initState();
    _loadSubjects();
  }

  Future<void> _loadSubjects() async {
    final url = Uri.parse(
      "https://sundarampal.github.io/myjsonfiles/subject1_2.json",
    );
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final data = convert.jsonDecode(response.body);
        // print(jsonResponse);
        // print(data);
        print(data.length);
        for(int i=0;i<=data.length-1;i++)
          {
            print(data[i]);
          }
        setState(() {
          // subjects = List<String>.from(jsonResponse);
          print("hii");

          notice = 'Subjects Loaded!';
          Utilities.setSubjects(data);
          // print(subjects);
        });
      } else {
        setState(() {
          notice = 'Failed to load subjects (status ${response.statusCode})';
        });
      }
    } catch (e) {
      setState(() {
        notice = 'Error loading subjects: $e';
      });
    }
    print(notice);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Starting Page"), centerTitle: true),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:Utilities.subjects ,
          ),
        ),
      ),
    );
  }
}
