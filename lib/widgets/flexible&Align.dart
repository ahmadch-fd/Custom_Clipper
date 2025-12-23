import 'package:flutter/material.dart';

class MyFlexible extends StatelessWidget {
  const MyFlexible({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // smainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Expanded(
          //   child: Container(
          //     height: double.infinity,
          //     width: 400,
          //     color: Colors.orangeAccent,
          //   ),
          // ),
          Flexible(
            fit: FlexFit.tight,
            child: Container(
              height: 20,
              width: double.infinity,
              color: const Color.fromARGB(255, 16, 169, 169),
              child: Align(
                alignment: AlignmentGeometry.center,
                child: Text('Hello'),
              ),
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            child: Container(
              height: 20,
              width: 300,
              color: const Color.fromARGB(255, 105, 48, 219),
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            child: Container(
              height: 20,
              width: 400,
              color: const Color.fromARGB(255, 77, 238, 149),
            ),
          ),
        ],
      ),
    );
  }
}
