import 'package:flutter/material.dart';
class Utilities {
  static void setSubjects(var data)
  {
    print("subject data ");
    subjects.clear();
    int n=data.length;
    for(int i=0;i<=n-1;i++)
      {
        var subject=data[i];
        String name=subject["name"].toString();
        String url=subject["quizzes_url"];
        var bttn=ElevatedButton(onPressed:() {
          String suburl=url;
          print(suburl);
        }, child: Text(name));
        subjects.add(bttn);
      }
  }
  static List<Widget> subjects=[];
}