import 'package:flutter/material.dart';
import 'package:materi/presentationlayer/screenview/screenview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Screeview()
    );
  }
}

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Days 2 - Mobile"),
//           centerTitle: false,
//         ),
//         body: SafeArea(
//           child: Column(
//             children: [
//               Container(
//                 padding: EdgeInsets.all(10),
//                 width: double.infinity,
//                 height: 50,
//                 color: Colors.amber,
//                 child: Text("Himakom Traing Skill"),
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
                  
//                   TextButton(
//                     onPressed: () {},
//                     child: Text("Text Button"),
//                     style: ButtonStyle(
//                         backgroundColor: MaterialStateProperty.all(Colors.red)),
//                   ),
//                   ElevatedButton(
//                     onPressed: () {},
//                     child: Text("Elevated Button"),
//                     style: ElevatedButton.styleFrom(
//                       primary: Colors.red, // background
//                       onPrimary: Colors.yellow, // foreground
//                     ),
//                   ),
//                   OutlinedButton(
//                       onPressed: () {},
//                       child: Text("Outline Button"),
//                       style: ButtonStyle(
//                           backgroundColor: MaterialStateProperty.all(Colors.red)))
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
