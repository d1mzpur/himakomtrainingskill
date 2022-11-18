import 'package:flutter/material.dart';

class GithubSearchView extends StatefulWidget {
  const GithubSearchView({super.key});

  @override
  State<GithubSearchView> createState() => _GithubSearchViewState();
}

class _GithubSearchViewState extends State<GithubSearchView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Github Search"),
      ),
    );
  }
}
