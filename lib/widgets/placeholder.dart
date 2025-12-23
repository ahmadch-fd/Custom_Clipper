import 'package:flutter/material.dart';

class MyPlaceholder extends StatelessWidget {
  const MyPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('This is my application'),
          Placeholder(
            color: Colors.grey,
            fallbackHeight: 90,
            fallbackWidth: 90,
            child: SizedBox(height: 90, width: 350),
          ),
          Text('This is my application'),
        ],
      ),
    );
  }
}
