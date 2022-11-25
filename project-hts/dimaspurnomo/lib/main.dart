import 'package:dimaspurnomo/presentionlayers/githubuser/githubuser.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Colors.purple),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      home: GithubUser(),
    );
  }
}
