import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amberAccent,
        ),
        body: const Column(
          children: [
            Text("iot"),
            Text("meter"),
            Text("smart"),
            Text("create"),
          ],
        ));
  }
}
