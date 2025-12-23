import 'package:flutter/material.dart';
import 'dart:math' as math;

class PakistanFlagScreen extends StatelessWidget {
  const PakistanFlagScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200], // Background halka grey
      appBar: AppBar(
        title: const Text("Pakistani Flag with ClipPath"),
        backgroundColor: const Color(0xFF01411C), // Pakistan Green
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.white, // Safaid patti (White Stripe)
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 10,
                spreadRadius: 2,
              ),
            ],
          ),
          child: Stack(
            children: [
              // 1. Green Part (Hara Hissa)
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: 225, // 75% of 300
                  color: const Color(0xFF01411C),
                ),
              ),

              // 2. Crescent (Chand)
              Positioned(
                left: 100,
                top: 40,
                child: ClipPath(
                  clipper: PakistanCrescentClipper(),
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.white,
                  ),
                ),
              ),

              // 3. Star (Sitara)
              Positioned(
                left: 165,
                top: 55,
                child: Transform.rotate(
                  angle: -math.pi / 4.5, // Sitara thora tircha
                  child: const Icon(Icons.star, color: Colors.white, size: 45),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Hamara Custom Clipper jo aapne design kiya
class PakistanCrescentClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()..fillType = PathFillType.evenOdd;
    final center = Offset(size.width / 2, size.height / 2);

    final outerRadius = size.width * 0.45;
    final innerRadius = outerRadius * 0.78;

    // Outer circle
    path.addOval(Rect.fromCircle(center: center, radius: outerRadius));

    // Inner cut (Thora offset taake crescent barik aur accurate ho)
    path.addOval(
      Rect.fromCircle(
        center: Offset(
          center.dx + (outerRadius * 0.35),
          center.dy - (outerRadius * 0.1),
        ),
        radius: innerRadius,
      ),
    );

    // Flag style rotation
    final matrix = Matrix4.identity()
      ..translate(center.dx, center.dy)
      ..rotateZ(-0.4) // Taqreeban 23 degrees tilt
      ..translate(-center.dx, -center.dy);

    return path.transform(matrix.storage);
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
