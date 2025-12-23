import 'package:flutter/material.dart';

class Overflowboxlimitedbox extends StatelessWidget {
  const Overflowboxlimitedbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LimitedBox(
          maxWidth: 200,
          maxHeight: 200,
          child: OverflowBox(
              maxWidth: double.infinity,
            maxHeight: double.infinity,
            child: Container(
              width: 300,
              height: 300,
              color: Colors.amber,
              child: const Center(child: Text('OverflowBox inside LimitedBox')),
            ),
          ),
        ),
      ),
    );
  }
}
