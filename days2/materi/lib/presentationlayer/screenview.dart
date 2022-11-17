import 'package:flutter/material.dart';
import 'package:materi/presentationlayer/buttonview.dart';
import 'package:materi/presentationlayer/imagesview.dart';
import 'package:materi/presentationlayer/inputview.dart';
import 'package:materi/presentationlayer/statefullview.dart';
import 'package:materi/presentationlayer/statelessview.dart';

class Screeview extends StatefulWidget {
  const Screeview({super.key});

  @override
  State<Screeview> createState() => _ScreeviewState();
}

class _ScreeviewState extends State<Screeview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Week Days 2"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Image.asset("lib/asset/images/logoHTS.png"),
            const Padding(padding: EdgeInsets.only(top: 10)),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const StatefulView()),
                );
              },
              child: Container(
                width: double.infinity,
                color: const Color.fromARGB(255, 36, 8, 42),
                padding: const EdgeInsets.all(10),
                child: const Center(
                  child: Text(
                    "Stateful Widget",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 10)),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const StatelessView()),
                );
              },
              child: Container(
                width: double.infinity,
                color: const Color.fromARGB(255, 36, 8, 42),
                padding: const EdgeInsets.all(10),
                child: const Center(
                  child: Text(
                    "Stateless Widget",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 10)),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ButtonView()),
                );
              },
              child: Container(
                width: double.infinity,
                color: const Color.fromARGB(255, 36, 8, 42),
                padding: const EdgeInsets.all(10),
                child: const Center(
                  child: Text(
                    "Button Widget",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 10)),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const InputView()),
                );
              },
              child: Container(
                width: double.infinity,
                color: const Color.fromARGB(255, 36, 8, 42),
                padding: const EdgeInsets.all(10),
                child: const Center(
                  child: Text(
                    "Text Input Widget",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 10)),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ImagesView()),
                );
              },
              child: Container(
                width: double.infinity,
                color: const Color.fromARGB(255, 36, 8, 42),
                padding: const EdgeInsets.all(10),
                child: const Center(
                  child: Text(
                    "Images",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
