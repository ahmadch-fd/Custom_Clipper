import 'package:flutter/material.dart';

class MyWrap extends StatelessWidget {
  const MyWrap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Wrap(
        direction: Axis.horizontal,
        alignment: WrapAlignment.spaceBetween,
        runSpacing: 4,
        spacing: 2,
        children: [
          Container(
            height: 70,
            width: 70,
            color: const Color.fromARGB(255, 58, 206, 139),
          ),
          Container(height: 70, width: 70, color: Colors.teal),

          Container(
            height: 70,
            width: 70,
            color: const Color.fromARGB(255, 129, 42, 134),
          ),

          Container(
            height: 70,
            width: 70,
            color: const Color.fromARGB(255, 196, 80, 206),
          ),

          Container(
            height: 70,
            width: 70,
            color: const Color.fromARGB(255, 69, 247, 38),
          ),
          Container(
            height: 70,
            width: 70,
            color: const Color.fromARGB(255, 133, 181, 218),
          ),
          Container(
            height: 70,
            width: 70,
            color: const Color.fromARGB(255, 243, 119, 3),
          ),
        ],
      ),
    );
  }
}
