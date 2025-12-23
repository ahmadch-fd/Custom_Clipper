import 'package:flutter/material.dart';

class MyBaseline extends StatelessWidget {
  const MyBaseline({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Baseline Example")),
      body: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic, // reuired
          children: [
            Text("Hello", style: TextStyle(fontSize: 40)),
            SizedBox(width: 10),
            Text("World", style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
