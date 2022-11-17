import 'package:flutter/material.dart';

class StatefulView extends StatefulWidget {
  const StatefulView({super.key});

  @override
  State<StatefulView> createState() => _StatefulViewState();
}

class _StatefulViewState extends State<StatefulView> {
  double size = 50;

  void small() {
    setState(() {
      size--;
    });
  }

  void big() {
    setState(() {
      size++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Statefull"),
      ),
      body: Column(
        children: [
          Text(
            "Welcome to Himakom Training Skill",
            style: TextStyle(fontSize: size),
          ),
          const Padding(padding: EdgeInsets.only(top: 10)),
          ElevatedButton(
              onPressed: () {
                small();
              },
              child: const Text("Kecilkan Tulisan")),
          const Padding(padding: EdgeInsets.only(top: 10)),
          ElevatedButton(
              onPressed: () {
                big();
              },
              child: const Text("Perbesar Tulisan")),
        ],
      ),
    );
  }
}
