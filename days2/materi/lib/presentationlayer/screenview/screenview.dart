import 'package:flutter/material.dart';
import 'package:materi/presentationlayer/componenview/ion/pading.dart';
import 'package:materi/presentationlayer/screenview/buttonview.dart';
import 'package:materi/presentationlayer/screenview/imagesview.dart';
import 'package:materi/presentationlayer/screenview/inputview.dart';
import 'package:materi/presentationlayer/screenview/statefullview.dart';
import 'package:materi/presentationlayer/screenview/statelessview.dart';

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
        title: Text("Week Days 2"),
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Image.asset("lib/asset/images/logoHTS.png"),
              paddingItem(),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const StatefulView()),
                  );
                },
                child: Container(
                  width: double.infinity,
                  color: Color.fromARGB(255, 36, 8, 42),
                  padding: EdgeInsets.all(10),
                  child: Center(
                    child: Text(
                      "Stateful Widget",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              paddingItem(),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const StatelessView()),
                  );
                },
                child: Container(
                  width: double.infinity,
                  color: Color.fromARGB(255, 36, 8, 42),
                  padding: EdgeInsets.all(10),
                  child: Center(
                    child: Text(
                      "Stateless Widget",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              paddingItem(),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const buttonView()),
                  );
                },
                child: Container(
                  width: double.infinity,
                  color: Color.fromARGB(255, 36, 8, 42),
                  padding: EdgeInsets.all(10),
                  child: Center(
                    child: Text(
                      "Button Widget",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              paddingItem(),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const inputView()),
                  );
                },
                child: Container(
                  width: double.infinity,
                  color: Color.fromARGB(255, 36, 8, 42),
                  padding: EdgeInsets.all(10),
                  child: Center(
                    child: Text(
                      "Text Input Widget",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              paddingItem(),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const imagesView()),
                  );
                },
                child: Container(
                  width: double.infinity,
                  color: Color.fromARGB(255, 36, 8, 42),
                  padding: EdgeInsets.all(10),
                  child: Center(
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
      ),
    );
  }
}
