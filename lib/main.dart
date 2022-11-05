import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Himakom Training Skill",
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Days 1",
          ),
        ),
        body: Center(
          child: Text("Hello Member\nHimakom Training Skill"),
        ),
      ),
    );
  }
}
