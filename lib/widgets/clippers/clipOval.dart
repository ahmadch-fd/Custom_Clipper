import 'package:flutter/material.dart';

class MyClipOval extends StatelessWidget {
  const MyClipOval({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
              width: 30,
              child: ClipOval(
                clipBehavior: Clip.hardEdge,
                child: Image.network('https://picsum.photos/300/300'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
