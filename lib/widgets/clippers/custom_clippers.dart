import 'package:flutter/material.dart';

class WavyHeaderScreen extends StatelessWidget {
  const WavyHeaderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back, color: Colors.black),
        title: const Text(
          "CustomHeader Screen",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          // 1. Wavy Header Part
          ClipPath(
            clipper: WavyHeaderClipper(),
            child: Container(
              height: 350,
              width: double.infinity,
              color: const Color(0xFFFDD883), // Mustard/Yellow Color
              child: const Center(
                child: Text(
                  "Wavy Header Design",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 216, 45, 45),
                  ),
                ),
              ),
            ),
          ),

          // 2. Screen ka baqi hissa
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Yeh screen ka baqi hissa hai.",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 10),
                Text(
                  "Yahan aap apna content, cards ya buttons daal saktay hain.",
                  style: TextStyle(color: Color.fromARGB(255, 166, 77, 77)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// 3. Custom Clipper for the Wave
class WavyHeaderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 80); // Left side ki line

    // Pehla Curve (Uper ki taraf)
    var firstControlPoint = Offset(size.width / 4, size.height);
    var firstEndPoint = Offset(size.width / 2, size.height - 40);
    path.quadraticBezierTo(
      firstControlPoint.dx,
      firstControlPoint.dy,
      firstEndPoint.dx,
      firstEndPoint.dy,
    );

    // Doosra Curve (Neeche ki taraf)
    var secondControlPoint = Offset(
      size.width - (size.width / 4),
      size.height - 90,
    );
    var secondEndPoint = Offset(size.width, size.height - 20);
    path.quadraticBezierTo(
      secondControlPoint.dx,
      secondControlPoint.dy,
      secondEndPoint.dx,
      secondEndPoint.dy,
    );

    path.lineTo(size.width, 0); // Right side se wapis ooper
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
