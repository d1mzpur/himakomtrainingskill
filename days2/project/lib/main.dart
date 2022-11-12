import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("WEEK 2"),
          centerTitle: true,
          backgroundColor: Colors.purple,
        ),
        body: Column(
          children: [
            Image.asset("lib/asset/images/logoHTS.png"),
            InkWell(
              onTap: () {
              },
              child: Container(
                padding: EdgeInsets.all(20),
                color: Color.fromARGB(255, 36, 8, 42),
                child: Row(
                  children: [
                    Text("Dimas Purnomo", style: TextStyle(color: Colors.white),),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
