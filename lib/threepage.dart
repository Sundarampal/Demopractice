import 'package:flutter/material.dart';

class Threepage extends StatelessWidget {
  const Threepage({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("thirdpage"),centerTitle: true),
        body: Center(
          child: ElevatedButton(onPressed: (){}, child: Text("click")),
        ),
      ),
    );
  }
}
