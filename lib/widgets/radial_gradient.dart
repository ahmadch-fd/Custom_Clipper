import 'package:flutter/material.dart';

class MyRadialGradient extends StatelessWidget {
  const MyRadialGradient({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(80),
                gradient: RadialGradient(
                  colors: [
                    Colors.pink,
                    Colors.yellow,
                    Colors.green,
                    Colors.blueAccent,
                    Colors.orangeAccent,
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
  