import 'package:flutter/material.dart';

class MyExpanded extends StatelessWidget {
  const MyExpanded({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(child: Container(height: 90, width: 100, color: Colors.red)),
          Container(
            height: 90,
            width: 100,
            color: const Color.fromARGB(255, 36, 70, 183),
          ),
        ],
      ),
    );
  }
}
