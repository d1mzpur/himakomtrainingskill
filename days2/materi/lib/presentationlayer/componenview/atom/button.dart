import 'package:flutter/material.dart';

class textButton extends StatelessWidget {
  const textButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {},
        child: Text("Aku Text Button"),
        // style: ButtonStyle(
        //   backgroundColor: MaterialStateProperty.all(Colors.red),
        // ),
      ),
    );
  }
}

class elevatorButton extends StatelessWidget {
  const elevatorButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {},
        child: Text("Elevator Button"),
        // style: ButtonStyle(
        //   backgroundColor: MaterialStateProperty.all(Colors.red),
        // ),
      ),
    );
  }
}


class outlinedButton extends StatelessWidget {
  const outlinedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: OutlinedButton(
        onPressed: () {},
        child: Text("Elevator Button"),
        // style: ButtonStyle(
        //   backgroundColor: MaterialStateProperty.all(Colors.red),
        // ),
      ),
    );
  }
}

