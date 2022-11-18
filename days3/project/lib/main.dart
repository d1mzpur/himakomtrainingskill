import 'package:flutter/material.dart';
import 'package:project/presentationlayers/GithubList/githublist_view.dart';
import 'package:project/presentationlayers/Main/myapp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // useMaterial3: true,
        appBarTheme: AppBarTheme(
          color: Color.fromARGB(255, 36, 8, 42),
          iconTheme: IconThemeData(color: Colors.white),
        ),
      ),
      home: GithubListView(),
    );
  }
}
