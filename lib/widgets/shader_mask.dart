import 'package:flutter/material.dart';

class MyShaderMask extends StatelessWidget {
  const MyShaderMask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ShaderMask(
            blendMode:
                BlendMode.srcIn, // Ensures the gradient only covers the text
            shaderCallback: (Rect bounds) {
              return LinearGradient(
                colors: [
                  Colors.blue,
                  Colors.purple,
                  Colors.tealAccent,
                  Colors.red,
                  Colors.green,
                  Colors.green,
                  Colors.blue,
                  Colors.purple,
                  Colors.tealAccent,

                  Colors.purple,
                  Colors.tealAccent,
                  Colors.red,
                  Colors.green,
                  Colors.green,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ).createShader(bounds);
            },
            child: Center(
              child: const Text(
                'Gradients look amazing!',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
