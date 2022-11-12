import 'package:flutter/material.dart';
import 'package:materi/presentationlayer/componenview/atom/button.dart';
import 'package:materi/presentationlayer/componenview/ion/pading.dart';

class buttonView extends StatelessWidget {
  const buttonView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Button View"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            textButton(),
            paddingItem(),
            elevatorButton(),
            paddingItem(),
            outlinedButton()
          ],
        ),
      ),
    );
  }
}
