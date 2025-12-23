import 'package:flutter/material.dart';

class MyConstrainedBox extends StatelessWidget {
  const MyConstrainedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: 100,
              maxWidth: 260,
              minHeight: 50,
              minWidth: 100,
            ),
            child: Container(height: 60, width: 190, color: Colors.amber),
          ),
        ],
      ),
    );
  }
}
