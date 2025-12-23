import 'package:flutter/material.dart';

class BlueScreen extends StatelessWidget {
  const BlueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ADJUST THESE TWO VALUES TO RESIZE
    const double panelHeightFactor =
        0.55; // 0.1 is tiny, 0.9 is almost full screen
    const double cornerRadius = 35.0; // 0.0 is sharp square, 60.0 is very round

    return Scaffold(
      // The exact vibrant blue from your image
      backgroundColor: const Color(0xFF4C66EE),
      body: Stack(
        children: [
          // 1. Large Top Background Decoration
          Positioned.fill(
            child: ClipPath(
              clipper: BackgroundArcClipper(
                centerX: 1.4,
                centerY: 0.03,
                radiusMultiplier: 0.79,
              ),
              child: Container(color: Colors.white.withOpacity(0.08)),
            ),
          ),

          // 2. Middle Background Decoration
          Positioned.fill(
            child: ClipPath(
              clipper: BackgroundArcClipper(
                centerX: 1.45,
                centerY: 0.43,
                radiusMultiplier: 0.7,
              ),
              child: Container(color: Colors.white.withOpacity(0.12)),
            ),
          ),

          // 3. The Main Bottom White Container
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipPath(
              clipper: SmoothPanelClipper(radius: cornerRadius),
              child: Container(
                height: MediaQuery.of(context).size.height * panelHeightFactor,
                width: double.infinity,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// 1. Clipper for the smooth white bottom container
class SmoothPanelClipper extends CustomClipper<Path> {
  final double radius;
  SmoothPanelClipper({required this.radius});

  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, radius);

    // Smooth Top-Left Corner
    path.quadraticBezierTo(0, 0, radius, 0);

    // Line across top
    path.lineTo(size.width - radius, 0);

    // Smooth Top-Right Corner
    path.quadraticBezierTo(size.width, 0, size.width, radius);

    // Down to bottom
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}

/// 2. Clipper for the background circular arcs
class BackgroundArcClipper extends CustomClipper<Path> {
  final double centerX; // Percentage of width
  final double centerY; // Percentage of height
  final double radiusMultiplier; // Based on width

  BackgroundArcClipper({
    required this.centerX,
    required this.centerY,
    required this.radiusMultiplier,
  });

  @override
  Path getClip(Size size) {
    Path path = Path();
    path.addOval(
      Rect.fromCircle(
        center: Offset(size.width * centerX, size.height * centerY),
        radius: size.width * radiusMultiplier,
      ),
    );
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
