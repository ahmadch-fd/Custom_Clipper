import 'package:flutter/material.dart';

class MyCustomPaintScreen extends StatelessWidget {
  const MyCustomPaintScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // 1. CustomPaint Widget
          Stack(
            children: [
              CustomPaint(
                size: Size(
                  MediaQuery.of(context).size.width,
                  300,
                ), // Screen ki width aur 300 height
                painter: HeaderPainter(),

                child: Container(
                  height: 300,
                  alignment: Alignment.center,
                  child: const Text(
                    "Custom Paint Header",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              CustomPaint(
                size: Size(
                  MediaQuery.of(context).size.width,
                  200,
                ), // Screen ki width aur 300 height
                painter: HeaderPainter(),

                child: Container(
                  height: 50,
                  alignment: Alignment.center,
                  child: const Text(
                    "Custom Paint Header",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          // Baqi screen ka content
          const Expanded(
            child: Center(child: Text("Yahan aapka baqi app content aayega")),
          ),
        ],
      ),
    );
  }
}

// 2. Hamara Custom Painter Class
class HeaderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = const Color.fromARGB(255, 219, 180, 122)
      ..style = PaintingStyle.fill;

    var path = Path();
    // Aapka diya hua logic:
    path.moveTo(0, size.height * 1); // Shuruat left side se

    // Curve banana (Bezier Curve)
    path.quadraticBezierTo(
      size.width / 2,
      size.height / 1, // Magnet point jo neechay ki taraf kheenchtahai
      size.width / 1,
      size.height * 0.3, // End point right side par
    );

    path.lineTo(size.width / 1, 0); // Right top corner
    path.lineTo(60, 50); // Left top corner
    path.close(); // Shape band

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
