import 'dart:ui';

import 'package:flutter/material.dart';

class MyShallowEffect extends StatelessWidget {
  const MyShallowEffect({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              // 1. Background Image
              Image.network('https://picsum.photos/500/800', fit: BoxFit.cover),

              // 2. Center mein hamara Shallow/Glass Card
              Center(
                child: ClipRRect(
                  // Taake blur ke corners bhi gol hon
                  borderRadius: BorderRadius.circular(20),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 2,
                      sigmaY: 2,
                    ), // Blur ki shiddat
                    child: Container(
                      height: 200,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(
                          0.1,
                        ), // Bohat halki safaid transparency
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.white.withOpacity(0.2),
                        ), // Glass edge look
                      ),
                      child: const Center(
                        child: Text(
                          "Shallow Effect",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
