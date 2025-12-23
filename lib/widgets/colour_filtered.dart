import 'package:flutter/material.dart';

class MyColourFiltered extends StatelessWidget {
  const MyColourFiltered({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ColorFiltered(
            colorFilter: ColorFilter.mode(
              Colors.black54,
              BlendMode.saturation, // Yeh saturation khatam karke grey kar dega
            ),
            child: Image.network('https://picsum.photos/500/300'),
          ),
        ],
      ),
    );
  }
}
