import 'package:flutter/material.dart';

import 'package:project/presentationlayers/GithubList/githublist_view.dart';

class ScreenView extends StatefulWidget {
  const ScreenView({super.key});

  @override
  State<ScreenView> createState() => _ScreenViewState();
}

class _ScreenViewState extends State<ScreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "PROJECT HTS",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Image.asset("lib/asset/images/logoHTS.png"),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GithubListView()),
              );
            },
            child: Container(
              padding: EdgeInsets.all(20),
              color: Color.fromARGB(255, 36, 8, 42),
              child: Text(
                "Dimas Purnomo",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
