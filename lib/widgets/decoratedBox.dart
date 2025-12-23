import 'package:flutter/material.dart';

class MyDecoratedBox extends StatelessWidget {
  const MyDecoratedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: InkWell(
              onTap: () {},
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.white, // Fallback color while image loads
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.blue, width: 2),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    ),
                  ],
                  // --- ADDED IMAGE SECTION ---
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://picsum.photos/200/300?grayscale',
                    ),
                    fit: BoxFit.cover, // Ensures the image fills the entire box
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'Hello World',
                    style: TextStyle(
                      color: Colors
                          .white, // Changed to white so it's visible over the image
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              // child: DecoratedBox(
              //   decoration: BoxDecoration(
              //     color: Colors.pinkAccent,
              //     borderRadius: BorderRadius.circular(15),
              //     border: Border.all(color: Colors.blue, width: 2),
              //     boxShadow: const [
              //       BoxShadow(
              //         color: Colors.black26,
              //         blurRadius: 10,
              //         offset: Offset(0, 5),
              //       ),
              //     ],
              //   ),
              //   child: const Padding(
              //     padding: EdgeInsets.all(20),
              //     child: Text('Hello World'),
              //   ),
              // ),
            ),
          ),
        ],
      ),
    );
  }
}
