import 'package:flutter/material.dart';

class MyLayoutBuilder extends StatelessWidget {
  const MyLayoutBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 60) {
            return Center(child: const Text('Small Layout'));
          } else {
            constraints.maxWidth < 120;
            return Center(child: const Text('Medium Layout'));
          }
        },
      ),
    );
  }
}
