import 'package:flutter/material.dart';
import 'package:materi/presentationlayer/componenview/ion/pading.dart';

class inputView extends StatefulWidget {
  const inputView({super.key});

  @override
  State<inputView> createState() => _inputViewState();
}

class _inputViewState extends State<inputView> {
  String nama = '';
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Input View"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(30),
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
          paddingItem(),
          Text(nama.toString())
        ],
      ),
    );
  }
}
