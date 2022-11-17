import 'package:flutter/material.dart';

class InputView extends StatefulWidget {
  const InputView({super.key});

  @override
  State<InputView> createState() => _InputViewState();
}

class _InputViewState extends State<InputView> {
  String nama = '';
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Input View"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(30),
            child: TextField(
              controller: _controller,
              //onChanged
              onSubmitted: (String value) {
                setState(() {
                  nama = value;
                });
              },
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 10)),
          Text(nama.toString())
        ],
      ),
    );
  }
}
