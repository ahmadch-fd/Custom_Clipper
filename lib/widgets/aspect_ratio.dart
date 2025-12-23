import 'package:flutter/material.dart';

class MyAspectRatio extends StatelessWidget {
  const MyAspectRatio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.black,
            padding: EdgeInsets.all(20),
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(color: Colors.brown),
            ),
          ),
        ],
      ),
    );
  }
}
