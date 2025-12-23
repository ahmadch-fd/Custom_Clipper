import 'package:flutter/material.dart';

class MyDirection extends StatelessWidget {
  const MyDirection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Directionality(
            textDirection: TextDirection.ltr,
            child: Center(child: Icon(Icons.arrow_back)),
          ),
        ],
      ),
    );
  }
}
