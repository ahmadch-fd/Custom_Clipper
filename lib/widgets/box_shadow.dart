import 'package:flutter/material.dart';

class MyBoxShadow extends StatelessWidget {
  const MyBoxShadow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 255, 150, 150),
                    blurRadius: 1,
                    blurStyle: BlurStyle.inner,
                    offset: Offset(2, 6),
                  ),
                ],
                borderRadius: BorderRadius.circular(90),

                color: Colors.redAccent,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
