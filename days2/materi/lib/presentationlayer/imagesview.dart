import 'package:flutter/material.dart';

class ImagesView extends StatefulWidget {
  const ImagesView({super.key});

  @override
  State<ImagesView> createState() => _ImagesViewState();
}

class _ImagesViewState extends State<ImagesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Button View"),
      ),
      body: Column(
        children: [
          const Text("Offline"),
          Image.asset("lib/asset/images/logoHTS.png"),
          const Padding(padding: EdgeInsets.only(top: 10)),
          const Text("Online"),
          Image.network(
              "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg")
        ],
      ),
    );
  }
}
