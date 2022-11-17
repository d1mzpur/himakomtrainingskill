import 'package:flutter/material.dart';

class ButtonView extends StatefulWidget {
  const ButtonView({super.key});

  @override
  State<ButtonView> createState() => _ButtonViewState();
}

class _ButtonViewState extends State<ButtonView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Button View"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {},
              child: const Text("Aku Text Button"),
              // style: ButtonStyle(
              //   backgroundColor: MaterialStateProperty.all(Colors.red),
              // ),
            ),
            const Padding(padding: EdgeInsets.only(top: 10)),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Elevator Button"),
              // style: ButtonStyle(
              //   backgroundColor: MaterialStateProperty.all(Colors.red),
              // ),
            ),
            const Padding(padding: EdgeInsets.only(top: 10)),
            OutlinedButton(
                onPressed: () {}, child: const Text("Elevator Button")
                // style: ButtonStyle(
                //   backgroundColor: MaterialStateProperty.all(Colors.red),
                // ),
                ),
          ],
        ),
      ),
    );
  }
}
