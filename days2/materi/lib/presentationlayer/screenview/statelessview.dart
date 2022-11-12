import 'package:flutter/material.dart';
import 'package:materi/presentationlayer/componenview/ion/pading.dart';

class StatelessView extends StatelessWidget {
  const StatelessView({super.key});

  

  @override
  Widget build(BuildContext context) {
    double size = 50;

  // void small() {
  //   setState(() {
  //     size--;
  //   });
  // }

  // void big() {
  //   setState(() {
  //     size++;
  //   });
  // }

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Statefull"),
      ),
      body: Column(
        children: [
          Text(
            "Welcome to Himakom Training Skill",
            style: TextStyle(fontSize: size),
          ),
          paddingItem(),
          ElevatedButton(
              onPressed: () {
                // small();
              },
              child: Text("Kecilkan Tulisan")),
          paddingItem(),
          ElevatedButton(
              onPressed: () {
                // big();
              },
              child: Text("Perbesar Tulisan")),
        ],
      ),
    );
  }
}
