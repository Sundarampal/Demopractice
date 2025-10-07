import 'package:flutter/material.dart';

class Twopage extends StatelessWidget {
  const Twopage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("second page"),centerTitle: true),
        body: Center(
          child: ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, '/third');
          }, child: Text("click")),
        ),
      ),
    );
  }
}
