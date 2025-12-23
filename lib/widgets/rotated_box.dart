import 'package:flutter/material.dart';

class MyRotatedBox extends StatelessWidget {
  const MyRotatedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          RotatedBox(
            quarterTurns: 2,
            child: Container(height: 200, width: 20, color: Colors.amber),
          ),
        ],
      ),
    );
  }
}
