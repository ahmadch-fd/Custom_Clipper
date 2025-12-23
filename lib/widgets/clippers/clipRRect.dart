import 'package:flutter/material.dart';

class MyClipRRect extends StatelessWidget {
  const MyClipRRect({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 80,
            width: 200,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(90),
              clipBehavior: Clip.hardEdge,
              child: Image.network(
                'https://picsum.photos/500/300',
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
