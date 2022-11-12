import 'package:flutter/material.dart';

class paddingTitle extends StatelessWidget {
  const paddingTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20),
    );
  }
}

class paddingItem extends StatelessWidget {
  const paddingItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10),
    );
  }
}