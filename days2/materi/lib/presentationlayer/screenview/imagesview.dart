import 'package:flutter/material.dart';
import 'package:materi/presentationlayer/componenview/ion/pading.dart';

class imagesView extends StatefulWidget {
  const imagesView({super.key});

  @override
  State<imagesView> createState() => _imagesViewState();
}

class _imagesViewState extends State<imagesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Button View"),
      ),
      body: Column(
        children: [
          Text("Offline"),
          Image.asset("lib/asset/images/logoHTS.png"),
          paddingItem(),
          Text("Online"),
          Image.network("https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg")
        ],
      ),
    );
  }
}
